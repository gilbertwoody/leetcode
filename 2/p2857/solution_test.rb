# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, count_pairs([[1,2],[4,2],[1,3],[5,2]], 5))
    assert_equal(10, count_pairs([[1,3],[1,3],[1,3],[1,3],[1,3]], 0))
  end
end
