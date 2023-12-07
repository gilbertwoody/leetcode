# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(32, mct_from_leaf_values([6,2,4]))
    assert_equal(44, mct_from_leaf_values([4,11]))
  end
end
