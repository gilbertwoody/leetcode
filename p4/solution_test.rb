# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2.0, find_median_sorted_arrays([1, 3], [2]))
    assert_equal(2.5, find_median_sorted_arrays([1, 2], [3, 4]))
    assert(true)
  end
end
