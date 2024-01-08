# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(3, number_of_arithmetic_slices([1,2,3,4]))
    assert_equal(0, number_of_arithmetic_slices([1]))
  end
end
