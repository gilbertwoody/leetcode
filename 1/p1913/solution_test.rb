# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(34, max_product_difference([5,6,2,7,4]))
    assert_equal(64, max_product_difference([4,2,5,9,7,4,8]))
  end
end
