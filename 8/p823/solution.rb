# @param {Integer[]} arr
# @return {Integer}
def num_factored_binary_trees(arr)
  count_roots = {}
  arr.sort!
  count_roots[arr[0]] = 1

  1.upto(arr.size - 1) do |j|
    count = 1
    n = arr[j]
    0.upto(j-1) do |i|
      m = arr[i]
      break if m > Math.sqrt(n)

      q, r = n.divmod(m)
      if r.zero? && arr.include?(q)
        c = count_roots[q] * count_roots[m]
        k = q == m ? 1 : 2
        count += k * c
        count %= 1_000_000_007
      end
    end
    count_roots[n] = count
  end

  count_roots.values.sum % 1_000_000_007
end
