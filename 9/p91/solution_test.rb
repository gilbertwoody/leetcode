# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, num_decodings("12"))
    assert_equal(3, num_decodings("226"))
    assert_equal(0, num_decodings("06"))
    assert_equal(1836311903, num_decodings("111111111111111111111111111111111111111111111"))
  end
end
