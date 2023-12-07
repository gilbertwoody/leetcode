# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert(backspace_compare("ab#c", "ad#c"))
    assert(backspace_compare("ab##", "c#d#"))
    refute(backspace_compare("a#c", "b"))
    assert(true)
  end
end




