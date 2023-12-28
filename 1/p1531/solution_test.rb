# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, get_length_of_optimal_compression("aaabcccd", 2))
    assert_equal(2, get_length_of_optimal_compression("aabbaa", 2))
    assert_equal(3, get_length_of_optimal_compression("aaaaaaaaaaa", 0))
  end
end
