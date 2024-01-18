# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(8, count_texts("22233"))
    assert_equal(82876089, count_texts("222222222222222222222222222222222222"))
  end
end
