/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */
struct ListNode* deleteMiddle(struct ListNode* head) {
    if (!head->next) {
        return NULL;
    }

    struct ListNode dummy1, dummy2, *fast, *slow;

    fast = slow = &dummy1;
    dummy1.next = &dummy2;
    dummy2.next = head;

    while (fast && fast->next) {
        slow = slow->next;
        fast = fast->next->next;
    }
    slow->next = slow->next->next;

    return head;
}
