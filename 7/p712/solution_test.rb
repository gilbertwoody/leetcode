# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(231, minimum_delete_sum("sea", "eat"))
    assert_equal(403, minimum_delete_sum("delete", "leet"))
  end
end
