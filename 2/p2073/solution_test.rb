# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(6, time_required_to_buy([2,3,2], 2))
    assert_equal(8, time_required_to_buy([5,1,1,1], 0))
  end
end
