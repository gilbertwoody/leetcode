# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, minimum_one_bit_operations(3))
    assert_equal(4, minimum_one_bit_operations(6))
  end
end
