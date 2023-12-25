# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(21, max_array_value([2,3,7,9,3]))
    assert_equal(11, max_array_value([5,3,3]))
  end
end
