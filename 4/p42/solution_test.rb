# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(6, trap([0,1,0,2,1,0,1,3,2,1,2,1]))
    assert_equal(9, trap([4,2,0,3,2,5]))
  end
end
