# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert(array_strings_are_equal(["ab", "c"], ["a", "bc"]))
    refute(array_strings_are_equal(["a", "cb"], ["ab", "c"]))
    assert(array_strings_are_equal(["abc", "d", "defg"], ["abcddefg"]))
  end
end
