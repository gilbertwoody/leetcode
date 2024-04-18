# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(16, island_perimeter([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]))
    assert_equal(4, island_perimeter([[1]]))
    assert_equal(4, island_perimeter([[1,0]]))
    assert_equal(4, island_perimeter([[0,1]]))
  end
end
