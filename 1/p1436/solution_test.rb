# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal("Sao Paulo", dest_city([["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]))
    assert_equal("A", dest_city([["B","C"],["D","B"],["C","A"]]))
    assert_equal("Z", dest_city([["A","Z"]]))
  end
end
