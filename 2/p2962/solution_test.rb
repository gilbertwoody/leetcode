# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(6, count_subarrays([1,3,2,3,3], 2))
    assert_equal(0, count_subarrays([1,4,2,1], 3))
    assert_equal(224, count_subarrays([61,23,38,23,56,40,82,56,82,82,82,70,8,69,8,7,19,14,58,42,82,10,82,78,15,82], 2))
  end
end
