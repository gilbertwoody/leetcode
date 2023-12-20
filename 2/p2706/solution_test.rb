# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(0, buy_choco([1,2,2], 3))
    assert_equal(3, buy_choco([3,2,3], 3))
  end
end
