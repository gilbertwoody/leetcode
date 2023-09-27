# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert(can_cross([0,1,3,5,6,8,12,17]))
    refute(can_cross([0,1,2,3,4,8,9,11]))
    assert(true)
  end
end
