  require "set"

# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  m, n = grid.size, grid[0].size
  sz = m * n
  uf = UnionFind.new(sz)

  waters = 0

  0.upto(m - 1) do |r|
    0.upto(n - 1) do |c|
      this = r * n + c
      if grid[r][c] == "1"
        unless r.zero?
          up = this - n
          uf.union(this, up) if grid[r - 1][c] == "1"
        end

        unless c.zero?
          left = this - 1
          uf.union(this, left) if grid[r][c - 1] == "1"
        end
      else
        waters += 1
      end
    end
  end

  uf.size - waters
end


class UnionFind
  attr_reader :size

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

