# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(15, largest_perimeter([5,5,5]))
    assert_equal(12, largest_perimeter([1,12,1,2,5,50,3]))
    assert_equal(-1, largest_perimeter([5,5,50]))
  end
end
