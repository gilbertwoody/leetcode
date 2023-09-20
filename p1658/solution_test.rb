# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, min_operations([1,1,4,2,3], 5))
    assert_equal(-1, min_operations([5,6,7,8,9], 4))
    assert_equal(5, min_operations([3,2,20,1,1,3], 10))
    assert(true)
  end
end
