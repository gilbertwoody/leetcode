# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, partition_array([3,6,1,2,5], 2))
    assert_equal(2, partition_array([1,2,3], 1))
    assert_equal(3, partition_array([2,2,4,5], 0))
  end
end
