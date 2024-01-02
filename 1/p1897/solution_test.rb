# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert(make_equal(["abc","aabc","bc"]))
    refute(make_equal(["ab","a"]))
  end
end
