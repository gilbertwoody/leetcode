# @param {Integer[][]} flowers
# @param {Integer[]} people
# @return {Integer[]}
def full_bloom_flowers(flowers, people)
  difference = Hash.new(0)
  flowers.each do |starting, ending|
    difference[starting] += 1
    difference[ending+1] -= 1
  end

  positions = []
  prefix = []
  curr = 0 
  difference.sort_by { |k,v| k }.each do |time, count|
    positions << time
    curr += count
    prefix << curr
  end

  people.map do |person| 
    i = positions.bsearch_index { |pos| pos > person }
    i ||= positions.size
    prefix[i - 1]
  end
end
