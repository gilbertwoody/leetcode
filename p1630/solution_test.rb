# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([true,false,true], check_arithmetic_subarrays([4,6,5,9,3,7], [0,0,2], [2,3,5]))
    assert_equal([false,true,false,false,true,true], check_arithmetic_subarrays([-12,-9,-3,-12,-6,15,20,-25,-20,-15,-10], [0,1,6,4,8,7], [4,4,9,7,9,10]))    
    assert(true)
  end
end
