# @param {Integer[]} nums
# @return {Integer[][]}
def find_matrix(nums)
  nline = Hash.new(0)
  result = []

  nums.each do |n|
    line = nline[n]

    result[line] ||= []
    result[line] << n
    nline[n] += 1
  end
  result

  # cur = nums
  # result = []

  # until cur.empty?
  #   row = []
  #   nxt = []
  #   current.each do |n|
  #     target = row.include?(n) ? nxt : row
  #     target << n
  #   end
  #   result << row
  #   cur = nxt
  # end

  # result
end
