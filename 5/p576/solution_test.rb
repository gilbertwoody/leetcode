# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(6, find_paths(2,2,2,0,0))
    assert_equal(12, find_paths(1,3,3,0,1))
  end
end
