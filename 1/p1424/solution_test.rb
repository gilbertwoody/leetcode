require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([1,4,2,7,5,3,8,6,9], find_diagonal_order([[1,2,3],[4,5,6],[7,8,9]]))
    assert_equal([1,6,2,8,7,3,9,4,12,10,5,13,11,14,15,16], find_diagonal_order([[1,2,3,4,5],[6,7],[8],[9,10,11],[12,13,14,15,16]]))    
  end
end