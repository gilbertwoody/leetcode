# @param {Integer[][]} points
# @return {Integer}
def max_width_of_vertical_area(points)
  sorted = points.map(&:first).sort
  x1, x2 = sorted.each_cons(2).max_by {|x1, x2| x2 - x1 }
  x2 - x1
end
