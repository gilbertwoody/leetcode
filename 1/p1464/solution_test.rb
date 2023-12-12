# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(12, max_product([3,4,5,2]))
    assert_equal(16, max_product([1,5,4,5]))
    assert_equal(12, max_product([3,7]))


  end
end
