# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    a = ["a","a","b","b","c","c","c"]
    r = compress(a)
    assert_equal(6, r)
    assert_equal(["a","2","b","2","c","3"], a[...r])

    a = ["a"]
    r = compress(a)
    assert_equal(1, r)
    assert_equal(["a"], a[...r])

    a = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
    r = compress(a)
    assert_equal(4, r)
    assert_equal(["a","b","1","2"], a[...r])

    a = ["a","a","a","b","b","a","a"]
    r = compress(a)
    assert_equal(6, r)
    assert_equal(["a","3","b","2","a","2"], a[...r])
  end
end
