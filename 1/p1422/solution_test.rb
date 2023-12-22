# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(5, max_score("011101"))
    assert_equal(5, max_score("00111"))
    assert_equal(3, max_score("1111"))
  end
end
