# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([[0,0,0],[0,0,0],[0,0,0]],
      image_smoother([[1,1,1],[1,0,1],[1,1,1]]))
    assert_equal([[137,141,137],[141,138,141],[137,141,137]],
      image_smoother([[100,200,100],[200,50,200],[100,200,100]]))
  end
end
