require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal("H2O", count_of_atoms("H20"))
    assert_equal("Mg(OH)2", count_of_atoms("H2MgO2"))
    assert_equal("K4N2O14S4", count_of_atoms("K4(ON(SO3)2)2"))
  end
end
