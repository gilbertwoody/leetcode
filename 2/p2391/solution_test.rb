# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(21, garbage_collection(["G","P","GP","GG"],[2,4,3]))
    assert_equal(37, garbage_collection(["MMM","PGM","GP"],[3,10]))
  end
end
