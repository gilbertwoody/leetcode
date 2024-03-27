# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(8, num_subarray_product_less_than_k([10,5,2,6], 100))
    assert_equal(0, num_subarray_product_less_than_k([1,2,3], 0))
  end
end
