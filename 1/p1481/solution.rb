# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_least_num_of_unique_ints(arr, k)
  arr.tally.sort_by { |key, val| val }
           .drop_while { |key, val| k -= val if k >= val }
           .size
end