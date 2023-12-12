# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(3, max_events([[1,2],[2,3],[3,4]]))
    assert_equal(4, max_events([[1,2],[2,3],[3,4],[1,2]]))
    assert_equal(4, max_events([[1,4],[4,4],[2,2],[3,4],[1,1]]))
    assert_equal(5, max_events([[1,2],[1,2],[3,3],[1,5],[1,5]]))
  end
end
