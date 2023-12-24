# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(1, min_operations("0100"))
    assert_equal(0, min_operations("10"))
    assert_equal(2, min_operations("1111"))
    
    
  end
end
