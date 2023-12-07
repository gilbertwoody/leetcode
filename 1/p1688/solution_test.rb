# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(6, number_of_matches(7))
    assert_equal(13, number_of_matches(14))
  end
end
