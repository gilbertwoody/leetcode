require_relative "union_find"

# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer}
def max_num_edges_to_remove(n, edges)
  alice, bob = UnionFind.new(n), UnionFind.new(n)

  edges.sort_by! { |type, _, _| -type }

  used = 0
  edges.each do |type, u, v|
    case type
    in 3 then
      t1 = alice.union(u, v)
      t2 = bob.union(u, v)
      used += 1 if t1 || t2
    in 2
      used += 1 if bob.union(u, v)
    in 1
      used += 1 if alice.union(u, v)
    end
  end

  return -1 unless alice.connected? && bob.connected?

  edges.size - used
end
