# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([1,2,2,2], full_bloom_flowers([[1,6],[3,7],[9,12],[4,13]], [2,3,7,11]))  
    assert_equal([2,2,1], full_bloom_flowers([[1,10],[3,3]], [3,3,2]))
    assert(true)
  end
end
