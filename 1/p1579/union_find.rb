require "set"

class UnionFind
  def initialize(n)
    @rank = Array.new(n + 1, 0)
    @parent = Array.new(n + 1, &:itself)
    @size = n
  end

  def find(x)
    @parent[x] = find(@parent[x]) if x != @parent[x]

    @parent[x]
  end

  def union(u, v)
    pu, pv = find(u), find(v)
    return false if pu == pv

    @size -= 1
    if @rank[pu] > @rank[pv]
      @parent[pv] = pu
    else
      @parent[pu] = pv
      @rank[pv] += 1 if @rank[pu] == @rank[pv]
    end

    true
  end

  def connected?
    @size == 1
  end
end
