# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([9, 7, 8], partition_labels("ababcbacadefegdehijhklij"))
    assert_equal([10], partition_labels("eccbbbbdec"))
  end
end
