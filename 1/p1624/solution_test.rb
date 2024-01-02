# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(0, max_length_between_equal_characters("aa"))
    assert_equal(2, max_length_between_equal_characters("abca"))
    assert_equal(-1, max_length_between_equal_characters("cbzxy"))
  end
end
