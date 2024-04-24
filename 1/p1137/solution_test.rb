# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, tribonacci(4))
    assert_equal(1389537, tribonacci(25))
  end
end
