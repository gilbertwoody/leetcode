# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, largest_submatrix([[0,0,1],[1,1,1],[1,0,1]]))
    assert_equal(3, largest_submatrix([[1,0,1,0,1]]))    
    assert_equal(2, largest_submatrix([[1,1,0],[1,0,1]]))            
  end
end
