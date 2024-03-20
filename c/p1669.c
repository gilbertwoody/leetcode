/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

struct ListNode* mergeInBetween(struct ListNode* list1, int a, int b, struct ListNode* list2){
    struct ListNode *pa, *pb, *tail2;
    int i;

    pa = list1;
    i = 0;
    while (++i < a) {
        pa = pa->next;
    }

    pb = pa;
    while (++i <= b + 2) {
        pb = pb->next;
    }

    tail2 = list2;
    while (tail2->next) {
        tail2 = tail2->next;
    }

    pa->next = list2;
    tail2->next = pb;

    return list1;
}