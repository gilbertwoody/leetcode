# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(3, hamming_weight(0b00000000000000000000000000001011))
    assert_equal(1, hamming_weight(0b00000000000000000000000010000000))
    assert_equal(31, hamming_weight(0b11111111111111111111111111111101))
  end
end
