# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(84, max_sum_after_partitioning([1,15,7,9,2,5,10], 3))
    assert_equal(83, max_sum_after_partitioning([1,4,1,5,7,3,6,1,9,9,3], 4))
    assert_equal(1, max_sum_after_partitioning([1], 1))
  end
end
