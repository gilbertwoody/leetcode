# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_includes(["11", "00"], find_different_binary_string(["01","10"]))
    assert_includes(["11", "10"], find_different_binary_string(["00","01"]))
    assert_includes(["000", "010", "100", "110", "101"], find_different_binary_string(["111","011","001"]))
    assert(true)
  end
end
