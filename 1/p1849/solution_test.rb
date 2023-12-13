# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    refute(split_string("1234"))
    assert(split_string("050043"))
    refute(split_string("9080701"))
  end
end
