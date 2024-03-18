# @param {Integer[][]} points
# @return {Integer}
def find_min_arrow_shots(points)
  points.sort!
  min = 1
  common = points[0]
  points.drop(1).each do |x3, x4|
    x1, x2 = common
    common[0] = x3
    common[1] = if x2 >= x3
      [x2, x4].min
    else
      min += 1; x4
    end
  end

  min
end
