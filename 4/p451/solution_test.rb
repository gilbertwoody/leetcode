# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    valid = lambda do |s|
      counts = []
      c = 0
      prev = nil
      s.each_char do |ch|
        if ch == prev
          c += 1
        else
          counts << c
          prev = ch
          c == 1
        end
      end
      counts << c

      counts.each_cons(2).all? { |a, b| a <= b }
    end

    assert(valid[frequency_sort("tree")])
    assert(valid[frequency_sort("cccaaa")])
    assert(valid[frequency_sort("Aabb")])
  end
end
