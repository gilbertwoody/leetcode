# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

Mock = Minitest::Mock

class SolutionTest < Minitest::Test
  def test_simple1
    branch1 = Mock.new
    branch1.expect :nil?, false
    branch1.expect :val, 4
    branch1.expect :left, nil
    branch1.expect :right, nil

    root1 = Mock.new
    root1.expect :nil?, false
    root1.expect :val, 2
    root1.expect :left, branch1
    root1.expect :left, branch1
    root1.expect :right, nil

    branch1 = root1

    branch2 = Mock.new
    branch2.expect :nil?, false
    branch2.expect :val, 3
    branch2.expect :left, nil
    branch2.expect :right, nil
    
    root1 = Mock.new
    root1.expect :nil?, false
    root1.expect :val, 1
    root1.expect :left, branch1
    root1.expect :left, branch1
    root1.expect :right, branch2
    root1.expect :right, branch2

    assert_equal("1(2(4))(3)", tree2str(root1))
  end
end
