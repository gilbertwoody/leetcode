# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(7, subarrays_with_k_distinct([1,2,1,2,3], 2))
    assert_equal(3, subarrays_with_k_distinct([1,2,1,3,4], 3))
  end
end
