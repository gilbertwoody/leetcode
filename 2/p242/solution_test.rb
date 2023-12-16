# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert(is_anagram("anagram", "nagaram"))
    refute(is_anagram("rat", "car"))
  end
end
