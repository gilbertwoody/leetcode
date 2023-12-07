# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def setup
    @md = MagicDictionary.new
    @md.build_dict(["hello", "leetcode"])
  end

  def test_simple
    refute(@md.search("hello"))
    assert(@md.search("hhllo"))
    refute(@md.search("hell"))
    refute(@md.search("leetcoded"))
  end
end
