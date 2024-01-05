# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, length_of_lis([10,9,2,5,3,7,101,18]))
    assert_equal(4, length_of_lis([0,1,0,3,2,3]))
    assert_equal(1, length_of_lis([7,7,7,7,7,7,7]))
    assert_equal(6, length_of_lis([1,3,6,7,9,4,10,5,6]))
  end
end
