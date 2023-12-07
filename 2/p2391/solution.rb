# @param {String[]} garbage
# @param {Integer[]} travel
# @return {Integer}
def garbage_collection(garbage, travel)
  time_to_travel = %w[M G P].sum do |t|
    idx = garbage.rindex { |gb| gb.include?(t) } || 0
    travel.first(idx).sum
  end

  time_to_collect = garbage.sum(&:size)
  time_to_collect + time_to_travel  
end
