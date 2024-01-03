# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(8, number_of_beams(["011001","000000","010100","001000"]))
    assert_equal(0, number_of_beams(["000","111","000"]))
  end
end
