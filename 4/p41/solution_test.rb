# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(3, first_missing_positive([1,2,0]))
    assert_equal(2, first_missing_positive([3,4,-1,1]))
    assert_equal(1, first_missing_positive([7,8,9,11,12]))
  end
end
