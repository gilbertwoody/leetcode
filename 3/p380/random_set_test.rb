# frozen_string_literal: true

require "minitest/autorun"
require_relative "random_set"

class RandomizedSetTest < Minitest::Test
  def setup
    @set = RandomizedSet.new
  end

  def test_simple
    refute(@set.remove(0))
    refute(@set.remove(0))
    assert(@set.insert(0))
    assert_equal(0, @set.get_random())
    assert(@set.remove(0))
    assert(@set.insert(0))
  end
end
