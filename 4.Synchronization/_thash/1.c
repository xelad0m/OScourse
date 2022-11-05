
void wdlock_ctx_init(struct wdlock_ctx *ctx)
{
	static atomic_ullong next = 0;	

	ctx->timestamp = atomic_fetch_add(&next, 1) + 1;		// атомик обеспечивает уникальность 
	ctx->locks = 0; 										//NULL
}

void wdlock_init(struct wdlock *lock)
{
	lock_init(&lock->lock);
	condition_init(&lock->cv);
	lock->owner = 0; 	// NULL
	lock->next = 0; 	// NULL
}

int wdlock_lock(struct wdlock *l, struct wdlock_ctx *ctx)
{
	// asm("int $3");
	lock(&l->lock);												// захватываем блокировку (дальше пройдет только 1 поток)

	while (l->owner && l->owner->timestamp > ctx->timestamp) {
		wait(&l->cv, &l->lock);  								// WAIT
	}

	if (l->owner && l->owner->timestamp < ctx->timestamp) {
		mutex_unlock(&l->lock);	
		return 0;												// DIE
	}

	if (l->owner && l->owner->timestamp == ctx->timestamp) {
		mutex_unlock(&l->lock);	
		return 1;												// CHECK REPEAT
	}
	
	// ждали или не ждали - прийдем сюда всеравно
	l->owner = ctx;												// пишем себя владельцем
	l->next = ctx->locks;										// мои блокировки в хвост данной блокировки
	ctx->locks = l;												// данную блокировку в мой контекст
	mutex_unlock(&l->lock);										// отпустить блокировку
	return 1;													// ОК на этой блокировке наш таймстемп
}

void wdlock_unlock(struct wdlock_ctx *ctx)
{
	// asm("int $3");
	struct wdlock *curr = ctx->locks;								// тут уж мьютексы не треюутся 

	if (curr) {							
		curr->owner = 0;											// обнулить владельца wdlocka (NULL)
		notify_one(&curr->cv);										// уведомить всех, что можно выходить из wait()								
		struct wdlock *next = curr->next;							// два указателя, чтобы обнулять next 
		while (next) {												// пройти по списку захваченных блокировок								
			notify_one(&next->cv);
			next->owner = 0;										// обнулить владельца wdlocka (NULL)
			next = next->next;										// следующий
			curr->next = 0;											// расцепляем список
			curr = next;										
		}
	}
	ctx->locks = 0; 												// NULL
}