# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(7, number_of_arithmetic_slices([2,4,6,8,10]))
    assert_equal(16, number_of_arithmetic_slices([7,7,7,7,7]))
  end
end
