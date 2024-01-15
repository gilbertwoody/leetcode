# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([[1,2,10],[4,5,7,8]], find_winners([[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]]))   
    assert_equal([[1,2,5,6],[]], find_winners([[2,3],[1,3],[5,4],[6,4]])) 
  end
end
