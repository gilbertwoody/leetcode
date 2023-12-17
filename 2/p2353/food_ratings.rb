class FoodRatings

=begin
    :type foods: String[]
    :type cuisines: String[]
    :type ratings: Integer[]
=end
  def initialize(foods, cuisines, ratings)
    @food_cuisine = {}
    @food_rating = {}
    @cusine_food_rating = Hash.new { |h, k| h[k] = []}

    foods.each_with_index do |food, i|
      c = @food_cuisine[food] = cuisines[i]
      r = @food_rating[food] = ratings[i]
      a = @cusine_food_rating[c]
      pos = a.bsearch_index do 
        |p| FoodRatings.compare(p, [r, food]) > 0
      end
      pos ||= a.size
      a.insert(pos, [r, food])
    end
  end


=begin
    :type food: String
    :type new_rating: Integer
    :rtype: Void
=end
  def change_rating(food, new_rating)
    old_rating = @food_rating[food]
    c = @food_cuisine[food]
    a = @cusine_food_rating[c]
    pos1 = a.bsearch_index do |p| 
      FoodRatings.compare(p, [old_rating, food]) >= 0 
    end
    a.delete_at(pos1)
    
    pos2 = a.bsearch_index do |p| 
      FoodRatings.compare(p, [new_rating, food]) > 0 
    end
    pos2 ||= a.size
    a.insert(pos2, [new_rating, food])
    
    @food_rating[food] = new_rating
  end


=begin
    :type cuisine: String
    :rtype: String
=end
  def highest_rated(cuisine)
    @cusine_food_rating[cuisine][-1][-1]
  end

  private
  def self.compare(this, that)
    c1 = this[0] <=> that[0]
    c1.zero? ? that[1] <=> this[1] : c1
  end
end

# Your FoodRatings object will be instantiated and called as such:
# obj = FoodRatings.new(foods, cuisines, ratings)
# obj.change_rating(food, new_rating)
# param_2 = obj.highest_rated(cuisine)
