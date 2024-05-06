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
def remove_nodes(head)
  stack = []
  p = head

  until p.nil?
    stack.pop until stack.empty? || stack[-1].val >= p.val
    stack << p
    p = p.next
  end

  tl = nil
  until stack.empty?
    node = stack.pop
    node.next = tl
    tl = node
  end

  return tl
end
