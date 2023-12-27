# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(3, min_cost("abaac", [1,2,3,4,5]))
    assert_equal(0, min_cost("abc", [1,2,3]))
    assert_equal(2, min_cost("aabaa", [1,2,3,4,1]))
    assert_equal(7, min_cost("aabaaaa", [1,2,3,4,3,2,1]))
  end
end
