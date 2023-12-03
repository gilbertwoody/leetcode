# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(7, min_time_to_visit_all_points([[1,1],[3,4],[-1,0]]))
    assert_equal(5, min_time_to_visit_all_points([[3,2],[-2,2]]))
  end
end

