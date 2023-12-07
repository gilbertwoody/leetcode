# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(9, max_coins([2,4,1,2,7,8]))
    assert_equal(4, max_coins([2,4,5]))
    assert_equal(18, max_coins([9,8,7,6,5,1,2,3,4]))
  end
end
