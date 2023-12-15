# @param {Integer[][]} wall
# @return {Integer}
def least_bricks(wall)
  gaps = Hash.new(0)
  n = wall.size
  wall.each do |w|
    gap = 0
    w.first(w.size - 1).each do |brick|
      gap += brick
      gaps[gap] += 1
    end
  end

  gaps.empty? ? n : n - gaps.values.max
end
