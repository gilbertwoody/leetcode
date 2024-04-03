# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert(exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCCED"))
    assert(exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "SEE"))
    refute(exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCB"))
    assert(exist([["a"]], "a"))
    assert(exist([["A","B","C","E"],["S","F","E","S"],["A","D","E","E"]], "ABCESEEEFS"))
    refute(exist([["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"]],"AAAAAAAAAAAAAAB"))
  end
end
