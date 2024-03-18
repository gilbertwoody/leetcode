# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, find_min_arrow_shots([[10,16],[2,8],[1,6],[7,12]]))
    assert_equal(4, find_min_arrow_shots([[1,2],[3,4],[5,6],[7,8]]))
    assert_equal(2, find_min_arrow_shots([[1,2],[2,3],[3,4],[4,5]]))
  end
end
