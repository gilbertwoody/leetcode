# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, max_num_edges_to_remove(4, [[3,1,2],[3,2,3],[1,1,3],[1,2,4],[1,1,2],[2,3,4]]))
    assert_equal(0, max_num_edges_to_remove(4, [[3,1,2],[3,2,3],[1,1,4],[2,1,4]]))
    assert_equal(-1, max_num_edges_to_remove(4, [[3,2,3],[1,1,2],[2,3,4]]))
    assert_equal(0, max_num_edges_to_remove(4, [[3,1,2], [3,3,4], [1,1,3],[2,2,4]]))
  end
end
