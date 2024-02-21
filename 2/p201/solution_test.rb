# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, range_bitwise_and(5, 7))
    assert_equal(0, range_bitwise_and(0, 0))
    assert_equal(0, range_bitwise_and(1, 2147483647))
  end
end
