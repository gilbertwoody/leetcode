# @param {String} s
# @return {Integer[]}
def partition_labels(s)
  range = Hash.new { |h, k| h[k] = [] }

  s.each_char.with_index do |ch, i|
    a = range[ch]
    a[0] = i if a.empty?
    a[1] = i
  end

  intervals = range.values.sort

  prev_start, prev_end = intervals[0]
  result = []
  intervals[1..].each do |x, y|
    if x <= prev_end
      prev_end = y if y > prev_end
    else
      result << prev_end - prev_start + 1
      prev_start, prev_end = x, y
    end
  end
  result << prev_end - prev_start + 1

  result
end
