# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([4,3,5], get_sum_absolute_differences([2,3,5]))
    assert_equal([24,15,13,15,21], get_sum_absolute_differences([1,4,6,8,10]))
  end
end
