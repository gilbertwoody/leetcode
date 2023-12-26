# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(1, num_rolls_to_target(1, 6, 3))
    assert_equal(6, num_rolls_to_target(2, 6, 7))
    assert_equal(222616187, num_rolls_to_target(30, 30, 500))
  end
end
