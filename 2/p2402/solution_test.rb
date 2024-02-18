# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(0, most_booked(2, [[0,10],[1,5],[2,7],[3,4]]))
    assert_equal(1, most_booked(3, [[1,20],[2,10],[3,5],[4,9],[6,8]]))
    assert_equal(0, most_booked(4, [[38,44],[17,38],[6,29],[34,40],[7,14],[4,27]]))
    assert_equal(0, most_booked(4, [[18,19],[3,12],[17,19],[2,13],[7,10]]))
  end
end
