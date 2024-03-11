# @param {Integer[]} nums
# @return {Boolean}
def can_traverse_all_pairs(nums)
  nums.sort!
  return false if nums[0] == 1 && nums.size != 1

  nums.uniq!
  size = nums.size
  n2i = nums.each_with_index.to_h
  ds = UnionFind.new(size)

  sieve = lambda do |n|
    primes = Array.new(n+1, true)
    2.upto(n) do |i|
      if primes[i]
        t = 2
        while (j = t * i) <= n
          primes[j] = false
          jj = n2i[j]
          if jj
            unless n2i.key?(i)
              n2i[i] = size
              ds.grow
              size += 1
            end

            ii = n2i[i]
            ds.union(ii, jj)
          end
          t += 1
        end
      end
    end
  end

  sieve[nums[-1]]
  ds.connected?
end

class UnionFind
  def initialize(n)
    @rank = Array.new(n, 0)
    @parent = Array.new(n, &:itself)
    @size = n
  end

  def find(x)
    @parent[x] = find(@parent[x]) if x != @parent[x]

    @parent[x]
  end

  def grow
    extra = @parent.size
    @rank << 0
    @parent << extra
    @size += 1
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
