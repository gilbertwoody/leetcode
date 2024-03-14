# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, num_subarrays_with_sum([1,0,1,0,1], 2))
    assert_equal(15, num_subarrays_with_sum([0,0,0,0,0], 0))
  end
end
