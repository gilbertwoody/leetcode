# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal("001", maximum_odd_binary_number("010"))
    assert_equal("1001", maximum_odd_binary_number("0101"))
    assert_equal("1", maximum_odd_binary_number("1"))
  end
end
