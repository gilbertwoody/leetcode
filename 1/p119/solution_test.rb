# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([1, 3, 3, 1], get_row(3))  
    assert_equal([1], get_row(0))
    assert_equal([1, 1], get_row(1))
    assert(true)
    refute(false)
  end
end
