require "set"

class MagicDictionary
  def initialize
    @words = Set.new
    @neigh_count = Hash.new(0)
  end


=begin
  :type dictionary: String[]
  :rtype: Void
=end
  def build_dict(dictionary)
    @words.merge(dictionary)
    @words.each do |w|
      0.upto(w.size - 1) do |i|
        nei = String.new(w)
        nei[i] = "*"
        @neigh_count[nei] += 1
      end
    end
  end


=begin
  :type search_word: String
  :rtype: Boolean
=end
  def search(search_word)
    0.upto(search_word.size - 1) do |i|
      nei = String.new(search_word)
      nei[i] = "*"
      
      return true if @neigh_count[nei] > 1
      return true if @neigh_count[nei] == 1 && !@words.include?(search_word)
    end

    false
  end
end

# Your MagicDictionary object will be instantiated and called as such:
# obj = MagicDictionary.new()
# obj.build_dict(dictionary)
# param_2 = obj.search(search_word)
