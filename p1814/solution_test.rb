# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, count_nice_pairs([42,11,1,97]))
    assert_equal(4, count_nice_pairs([13,10,35,24,76]))
    assert(true)
  end
end
