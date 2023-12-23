# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    refute(is_path_crossing("NES"))
    assert(is_path_crossing("NESWW"))    
  end
end
