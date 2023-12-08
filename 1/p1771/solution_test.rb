# frozen_string_literal: true
# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(5, longest_palindrome("cacb", "cbba"))
    assert_equal(3, longest_palindrome("ab", "ab"))
    assert_equal(0, longest_palindrome("aa", "bb"))
  end
end

# describe "solution" do
#   it "must respond positively" do
#       value().must_equal 5
#       value(longest_palindrome("ab", "ab")).must_equal 3
#   end

#   it "must repsond negatively" do 
#     value(longest_palindrome("aa", "bb")).must_be :zero?
#   end
# end
