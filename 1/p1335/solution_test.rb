# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(7, min_difficulty([6,5,4,3,2,1], 2))
    assert_equal(-1, min_difficulty([9,9,9], 4))
    assert_equal(3, min_difficulty([1,1,1], 3))
  end
end
