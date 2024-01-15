# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(9, eval_rpn(["2","1","+","3","*"]))
    assert_equal(6, eval_rpn(["4","13","5","/","+"]))
    assert_equal(22, eval_rpn(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]))
  end
end
