# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(200, max_dot_product([-3,-8,3,-10,1,3,9], [9,2,3,7,-9,1,-8,5,-1,-1]))
  end
end
