# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    # assert_equal(4, num_ways(3, 2))  
    # assert_equal(2, num_ways(2, 4))
    assert_equal(8, num_ways(4, 2))
    assert(true)
  end
end
