# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal()
  end
end
# @param {Integer[]} nums
# @return {Integer}
def max_strength(nums)
  n = nums.size

  return nums[0] if n == 1

  nums.sort!
  return 0 if nums[-1].zero? && nums.count(&:negative?) == 1

  nums = nums.reject(&:zero?)
  return 0 if nums.empty?

  p = nums.reduce(&:*)
  return p if p.positive?

  n = nums.select(&:negative?).max
  p / n
end
