# frozen_string_literal: true

require "minitest/autorun"
require_relative "food_ratings"

class SolutionTest < Minitest::Test
  def test_simple
    ["FoodRatings","highestRated","highestRated","changeRating","highestRated","changeRating","highestRated"]
    fr = FoodRatings.new(["kimchi","miso","sushi","moussaka","ramen","bulgogi"],["korean","japanese","japanese","greek","japanese","korean"],[9,12,8,15,14,7]) 
    assert_equal("kimchi", fr.highest_rated("korean"))
    assert_equal("ramen", fr.highest_rated("japanese"))
    fr.change_rating("sushi", 16)
    assert_equal("sushi", fr.highest_rated("japanese"))
    fr.change_rating("ramen", 16)
    assert_equal("ramen", fr.highest_rated("japanese"))
  end
end
