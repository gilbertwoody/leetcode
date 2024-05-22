# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([["a","a","b"],["aa","b"]], partition("aab"))
    assert_equal([["a"]], partition("a"))
  end
end
