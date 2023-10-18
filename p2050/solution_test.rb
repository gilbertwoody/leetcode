# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(8, minimum_time(3, [[1,3],[2,3]], [3,2,5]))
    assert_equal(12, minimum_time(5, [[1,5],[2,5],[3,5],[3,4],[4,5]], [1,2,3,4,5]))  
    assert(true)
  end
end
