# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(24, get_maximum_gold([[0,6,0],
                                       [5,8,7],
                                       [0,9,0]]))
    assert_equal(28, get_maximum_gold([[1,0,7],
                                       [2,0,6],
                                       [3,4,5],
                                       [0,3,0],
                                       [9,0,20]]))
    assert_equal(60, get_maximum_gold([[1,0,7,0,0,0],
                                       [2,0,6,0,1,0],
                                       [3,5,6,7,4,2],
                                       [4,3,1,0,2,0],
                                       [3,0,5,0,20,0]]))
    assert_equal(25, get_maximum_gold([[1,1,1,1,1],
                                      [1,1,1,1,1],
                                      [1,1,1,1,1],
                                      [1,1,1,1,1],
                                      [1,1,1,1,1]]))
  end
end
