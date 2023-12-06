# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(10, total_money(4))
    assert_equal(37, total_money(10)) 
    assert_equal(96, total_money(20))    
  end
end
