# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([123,234], sequential_digits(100, 300))
    assert_equal([1234,2345,3456,4567,5678,6789,12345], sequential_digits(1000, 13000))
  end
end
