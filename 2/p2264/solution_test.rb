# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal("777", largest_good_integer("6777133339"))
    assert_equal("000", largest_good_integer("2300019"))
    assert_equal("", largest_good_integer("42352338"))
  end
end
