# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([[0,0,4],[0,0,4],[-2,-2,2]], 
                  ones_minus_zeros([[0,1,1],[1,0,1],[0,0,1]]))
    assert_equal([[5,5,5],[5,5,5]], 
                 ones_minus_zeros([[1,1,1],[1,1,1]]))
  end
end
