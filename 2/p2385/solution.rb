# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end

require "set"
# @param {TreeNode} root
# @param {Integer} start
# @return {Integer}
def amount_of_time(root, start)
  adj =  Hash.new { |h,k| h[k] = [] }

  from = nil
  dfs = lambda do |node|
    return if node.nil?

    from = node if node.val == start

    unless node.left.nil?
      adj[node] << node.left
      adj[node.left] << node
      dfs[node.left]
    end

    unless node.right.nil?
      adj[node.right] << node
      adj[node] << node.right
      dfs[node.right]
    end
  end

  dfs[root]

  q = [from]
  known = Set.new
  d = {}
  max = d[from] = 0

  until q.empty?
    node = q.pop
    known << node
    adj[node].each do |nei|
      unless known.include?(nei)
        known << nei
        q.insert(0, nei)
        d[nei] = d[node] + 1
        max = d[nei] if d[nei] > max
      end
    end
  end

  max
end
