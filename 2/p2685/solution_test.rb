# frozen_string_literal: true

require "test_helper"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(7, find_max_fish([[0,2,1,0],[4,0,0,3],[1,0,0,4],[0,3,2,0]]))
    assert_equal(1, find_max_fish([[1,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,1]]))
    assert(true)
  end
end
