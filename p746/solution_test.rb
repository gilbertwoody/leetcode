# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(15, min_cost_climbing_stairs([10, 15, 20]))  
    assert_equal(6, min_cost_climbing_stairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]))  
    assert(true)
  end
end
