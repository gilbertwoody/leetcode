# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(13, min_falling_path_sum([[1,2,3],[4,5,6],[7,8,9]]))
    assert_equal(7, min_falling_path_sum([[7]]))
    assert_equal(-192, min_falling_path_sum([[-73,61,43,-48,-36],
                                             [3,30,27,57,10],
                                             [96,-76,84,59,-15],
                                             [5,-49,76,31,-7],
                                             [97,91,61,-46,67]]))
  end
end
