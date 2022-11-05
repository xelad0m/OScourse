
#include "stdio.h"

struct lock {
    struct lock * next;
    int id;    
};

struct ctx {
    int timestamp;
    struct lock * locks;

};

void init(struct lock *l) {
    l->next = 0;
    l->id = 0;
}

void init_ctx(struct ctx *c) {
    c->timestamp = 0;
    c->locks = 0;
}

void chain(struct ctx *c, struct lock *l, int i)
{
    struct lock * last = c->locks;
    if (!last) {
        c->locks = l;
        c->locks->id = i;
    }
    else {
        while (last->next)
            last = last->next;
        last->next = l;
        last->next->id = i;
    }
}

void unchain(struct ctx *c)
{
    struct lock * prev = c->locks;
    struct lock * next = prev->next;
    while (next) {
        prev->next = 0;
		prev = next;
		next = next->next;
    }

}

void prnt(struct ctx *c)
{
    struct lock * tmp = c->locks;
    while (tmp) {
        printf("id = %d\n", tmp->id);
        tmp = tmp->next;
    }
}

int main(void)
{
    struct lock some_locks[5];
    struct ctx c;

    init_ctx(&c);
    for (int i=0; i != 5; ++i)
        init(&some_locks[i]);
    
    for (int i=0; i != 5; ++i)
        chain(&c, &some_locks[i], i+1);

    prnt(&c);

    // chained
    for (int i=0; i != 5; ++i)
        printf("%p %d ", some_locks[i].next, some_locks[i].id);
    printf("\n");

    unchain(&c);
    // unchained
    for (int i=0; i != 5; ++i)
        printf("%p %d ", some_locks[i].next, some_locks[i].id);
    printf("\n");
    return 0;
}