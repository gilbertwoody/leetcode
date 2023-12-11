# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(6, find_special_integer([1,2,2,6,6,6,6,7,10]))
    assert_equal(1, find_special_integer([1,1]))
    assert_equal(3, find_special_integer([1,2,3,3]))
  end
end
