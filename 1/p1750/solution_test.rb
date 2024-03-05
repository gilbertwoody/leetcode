# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, minimum_length("ca"))
    assert_equal(0, minimum_length("cabaabac"))
    assert_equal(3, minimum_length("aabccabba"))
  end
end
