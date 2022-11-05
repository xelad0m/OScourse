#ifndef __LIST_H__
#define __LIST_H__

extern int DEBUG;
extern int TRACE;

struct list_head {												// такой вот список, ссылка на него это есть текущий эелеменм
	struct list_head *next;										// если list->next == list то список пуст (только сам список и есть)
	struct list_head *prev;										// позволяет держать на укаателе текущий элемент (активный поток)
};

void list_init(struct list_head *list);
void list_add_tail(struct list_head *node, struct list_head *list);
void list_add(struct list_head *node, struct list_head *list);
void list_del(struct list_head *node);
void list_splice(struct list_head *from, struct list_head *to);
void list_splice_tail(struct list_head *from, struct list_head *to);
int list_empty(const struct list_head *list);

#endif /*__LIST_H__*/
