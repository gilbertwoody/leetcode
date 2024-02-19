# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
def furthest_building(heights, bricks, ladders)
  steps = []
  heights.each_cons(2) do |a, b|
    steps << (a >= b ? 0 : b - a)
  end

  right = (0...steps.size).to_a.bsearch do |i|
    !can_exhaust?(steps[..i].reject(&:zero?), bricks, ladders)
  end

  right || steps.size
end

def can_exhaust?(h, b, l)
  h.sort_by! { |x| -x }
  h.drop(l).sum <= b
end
