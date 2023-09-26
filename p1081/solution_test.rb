# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal("abc", smallest_subsequence("bcabc"))  
    assert_equal("acdb", smallest_subsequence("cbacdcbc"))
    assert_equal("helowrd", smallest_subsequence("helloworld"))
    assert(true)
  end
end
