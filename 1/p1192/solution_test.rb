# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([[1,3 ]], critical_connections(4, [[0,1],[1,2],[2,0],[1,3]]))
    assert_equal([[0,1]], critical_connections(2, [[0,1]]))
  end
end
