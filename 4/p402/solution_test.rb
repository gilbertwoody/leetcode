# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal("1219", remove_kdigits("1432219", 3))
    assert_equal("200", remove_kdigits("10200", 1))
    assert_equal("0", remove_kdigits("10", 2))
  end
end
