# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(3, h_index([0,1,3,5,6]))
    assert_equal(2, h_index([1,2,100]))
    assert_equal(0, h_index([0,0]))
    assert_equal(2, h_index([0,1,2,5,6]))
    assert_equal(2, h_index([0,1,1,5,6]))
  end
end
