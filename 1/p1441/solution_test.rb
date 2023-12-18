# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(["Push","Push","Pop","Push"], build_array([1,3], 3))
    assert_equal(["Push","Push","Push"], build_array([1,2,3], 3))
    assert_equal(["Push","Push"], build_array([1,2], 4))
  end
end
