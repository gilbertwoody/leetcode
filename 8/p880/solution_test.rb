# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal("o", decode_at_index("leet2code3", 10))  
    assert_equal("h", decode_at_index("ha22", 5))
    assert_equal("a", decode_at_index("a2345678999999999999999", 1))
    assert(true)
  end
end
