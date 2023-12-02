# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(6, count_characters(["cat","bt","hat","tree"], "atach"))
    assert_equal(10, count_characters(["hello","world","leetcode"], "welldonehoneyr"))
  end
end
