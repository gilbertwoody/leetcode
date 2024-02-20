# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(1, find_least_num_of_unique_ints([5,5,4], 1))
    assert_equal(2, find_least_num_of_unique_ints([4,3,1,1,3,3,2], 3))
  end
end
