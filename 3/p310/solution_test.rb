# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([1], find_min_height_trees(4, [[1,0],[1,2],[1,3]]))
    assert_equal([3,4], find_min_height_trees(6, [[3,0],[3,1],[3,2],[3,4],[5,4]]).sort)
  end
end
