# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, minimum_beautiful_substrings("1011"))
    assert_equal(3, minimum_beautiful_substrings("111"))
    assert_equal(-1, minimum_beautiful_substrings("0"))
    assert_equal(6, minimum_beautiful_substrings("101101111101"))
  end
end
