require 'set'

# @param {Integer[]} stones
# @return {Boolean}
def can_cross(stones)
  dest = stones.last
  known = Set.new
  stone_set = stones.to_set

  jump_from = lambda do |i, step|
    return true if i == dest
    return false unless stone_set.include?(i)
    return false if i > dest
    return false if known.include?([i, step])
    
    succeeded = (step > 1 && jump_from[i + step - 1, step - 1]) || 
      jump_from[i + step, step] ||
      jump_from[i + step + 1, step + 1]
    known << [i, step] unless succeeded
    succeeded
  end

  jump_from[1, 1]
end