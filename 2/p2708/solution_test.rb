# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(1350, max_strength([3,-1,-5,2,5,-9]))
    assert_equal(20, max_strength([-4,-5,-4]))
    assert_equal(0, max_strength([0,0,0,0,0,0,0,0,0,0,0,0,0]))
    assert_equal(28, max_strength([0,-4,-7]))
    assert_equal(0, max_strength([0,-5,0]))
    assert_equal(0, max_strength([0,-1]))
    assert_equal(265420800, max_strength([8,6,0,5,-4,-8,-4,9,-1,6,-4,8,-5]))
  end
end
