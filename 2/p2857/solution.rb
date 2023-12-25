# @param {Integer[][]} coordinates
# @param {Integer} k
# @return {Integer}
def count_pairs(coordinates, k)
  known = Hash.new(0)
  count = 0
  coordinates.each do |x1, y1|
    0.upto(k) do |x|
      x2 = x ^ x1
      y2 = (k - x) ^ y1
      count += known[[x2, y2]]
    end
    known[[x1, y1]] += 1
  end
  count
end
