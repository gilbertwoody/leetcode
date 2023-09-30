# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    refute(find132pattern([1,2,3,4]))
    assert(find132pattern([3,1,4,2]))
    assert(find132pattern([-1,3,2,0]))
    assert(find132pattern([1,4,0,-1,-2,-3,-1,-2]))
    assert(true)
  end
end
