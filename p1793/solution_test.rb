# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(15, maximum_score([1,4,3,7,4,5], 3))  
    assert_equal(20, maximum_score([5,5,4,5,4,1,1,1], 0))  
    assert(true)
  end
end
