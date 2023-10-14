require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(3, paint_walls([1,2,3,2], [1,2,3,2]))
    assert_equal(4, paint_walls([2,3,4,2], [1,1,1,1]))
  end
end  


