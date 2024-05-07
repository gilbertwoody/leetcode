# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def double_it(head)
  return head if head.val.zero?

  num = 0
  p = head
  until p.nil?
    num *= 10
    num += p.val
    p = p.next
  end

  num *= 2
  result = nil
  until num.zero?
    num, r = num.divmod(10)
    result = ListNode.new(r, result)
  end

  result
end
