# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal("5", largest_odd_number("52"))
    assert_equal("", largest_odd_number("4206"))
    assert_equal("35427", largest_odd_number("35427"))
  end
end
