# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(1, num_islands([["1","1","1","1","0"],
                                 ["1","1","0","1","0"],
                                 ["1","1","0","0","0"],
                                 ["0","0","0","0","0"]]))
    assert_equal(3, num_islands([["1","1","0","0","0"],
                                 ["1","1","0","0","0"],
                                 ["0","0","1","0","0"],
                                 ["0","0","0","1","1"]]))
  end
end
