require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(5, count_vowel_permutation(1))
    assert_equal(10, count_vowel_permutation(2))
    assert_equal(68, count_vowel_permutation(5))
    assert_equal(18208803, count_vowel_permutation(144))
  end
end