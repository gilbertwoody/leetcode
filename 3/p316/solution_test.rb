require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal("abc", remove_duplicate_letters("bcabc"))  
    assert_equal("acdb", remove_duplicate_letters("cbacdcbc"))
    assert_equal("helowrd", remove_duplicate_letters("helowrd"))
    assert(true)
  end
end
