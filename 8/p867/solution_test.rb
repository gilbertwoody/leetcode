# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([[1,4,7],[2,5,8],[3,6,9]], transpose([[1,2,3],[4,5,6],[7,8,9]]))
    assert_equal([[1,4],[2,5],[3,6]], transpose([[1,2,3],[4,5,6]]))
  end
end
