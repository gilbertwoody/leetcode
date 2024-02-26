# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([3,-2,1,-5,2,-4], rearrange_array([3,1,-2,-5,2,-4]))  
    assert_equal([1, -1], rearrange_array([-1,1]))      
  end
end
