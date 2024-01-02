# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, max_ice_cream([1,3,2,4,1], 7))
    assert_equal(0, max_ice_cream([10,6,8,7,7,8], 5))
    assert_equal(6, max_ice_cream([1,6,3,1,2,5], 20))
  end
end
