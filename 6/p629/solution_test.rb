# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(1, k_inverse_pairs(3, 0))
    assert_equal(2, k_inverse_pairs(3, 1))
    assert_equal(663677020, k_inverse_pairs(1000, 1000))
  end
end
