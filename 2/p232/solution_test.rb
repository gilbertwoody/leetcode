# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    q = MyQueue.new
    q.push(1)
    q.push(2)
    assert_equal(1, q.peek)
    assert_equal(1, q.pop)
    refute(q.empty)
  end
end
