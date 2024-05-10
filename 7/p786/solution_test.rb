# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([2, 5], kth_smallest_prime_fraction([1,2,3,5], 3))
    assert_equal([1, 7], kth_smallest_prime_fraction([1,7], 1))
    assert_equal([1, 13], kth_smallest_prime_fraction([1,3,11,13,37,53,59], 6))
    assert_equal([29, 73], kth_smallest_prime_fraction([1,5,17,29,41,43,61,73,83], 21))
  end
end
