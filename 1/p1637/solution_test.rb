# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(1, max_width_of_vertical_area([[8,7],[9,9],[7,4],[9,7]]))
    assert_equal(3, max_width_of_vertical_area([[3,1],[9,0],[1,0],[1,4],[5,3],[8,8]]))
  end
end
