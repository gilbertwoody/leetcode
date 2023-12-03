# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
  points.each_cons(2).sum do |(a, b), (c, d)|
    t1 = (a - c).abs
    t2 = (b - d).abs
    t1 > t2 ? t1 : t2
  end
end
