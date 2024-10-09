# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(1, min_add_to_make_valid("())"))
    assert_equal(3, min_add_to_make_valid("((("))
  end
end
