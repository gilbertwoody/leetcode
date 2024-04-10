# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([2,13,3,11,5,17,7], deck_revealed_increasing([17,13,11,2,3,5,7]))
    assert_equal([1,1000], deck_revealed_increasing([1,1000]))
  end
end
