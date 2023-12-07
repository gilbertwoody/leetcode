# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert(find_subarrays([4,2,4]))
    refute(find_subarrays([1,2,3,4,5]))
    assert(find_subarrays([0,0,0]))
  end
end
