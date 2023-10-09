# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([3,4], search_range([5,7,7,8,8,10], 8))
    assert_equal([-1,-1], search_range([5,7,7,8,8,10], 6))
    assert_equal([-1,-1], search_range([], 0))
    assert(true)
  end
end
