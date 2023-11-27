# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(10, knight_dialer(1))
    assert_equal(20, knight_dialer(2))
    assert_equal(136006598, knight_dialer(3131))
  end
end
