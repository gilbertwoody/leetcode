# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, find_judge(2, [[1,2]]))
    assert_equal(3, find_judge(3, [[1,3],[2,3]]))
    assert_equal(-1, find_judge(3, [[1,3],[2,3],[3,1]]))
    assert_equal(-1, find_judge(3, [[1,2],[2,3]]))
  end
end
