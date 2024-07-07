require_relative "solution"
require "minitest/autorun"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(13, num_water_bottles(9, 3))
    assert_equal(19, num_water_bottles(15, 4))
  end
end
