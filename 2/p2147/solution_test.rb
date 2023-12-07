# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(3, number_of_ways("SSPPSPS"))
    assert_equal(1, number_of_ways("PPSPSP"))
    assert_equal(0, number_of_ways("S"))
    assert_equal(0, number_of_ways("P"))
  end
end
