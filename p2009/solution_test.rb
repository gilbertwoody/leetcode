require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(0, min_operations([4,2,5,3]))
    assert_equal(1, min_operations([1,2,3,5,6]))
    assert_equal(3, min_operations([1, 10, 100, 1000]))
    assert_equal(2, min_operations([8,5,9,9,8,4]))
    assert_equal(6, min_operations([8,10,16,18,10,10,16,13,13,16]))
  end
end
