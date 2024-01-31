# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([1,1,4,2,1,1,0,0], daily_temperatures([73,74,75,71,69,72,76,73]))
    assert_equal([1,1,1,0], daily_temperatures([30,40,50,60]))
    assert_equal([1,1,0], daily_temperatures([30,60,90]))
  end
end
