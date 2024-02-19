# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, furthest_building([4,2,7,6,9,14,12], 5, 1))
    assert_equal(7, furthest_building([4,12,2,7,3,18,20,3,19], 10, 2))
    assert_equal(3, furthest_building([14,3,19,3], 17, 0))
  end
end
