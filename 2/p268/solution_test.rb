# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, missing_number([3,0,1]))
    assert_equal(2, missing_number([0,1]))
    assert_equal(8, missing_number([9,6,4,2,3,5,7,0,1]))
  end
end

