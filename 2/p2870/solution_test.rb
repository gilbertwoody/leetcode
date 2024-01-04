# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, min_operations([2,3,3,2,2,4,2,3,4]))
    assert_equal(-1, min_operations([2,1,2,2,3,3]))
  end
end
