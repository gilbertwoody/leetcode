class RandomizedSet
  def initialize()
    @vals = []
    @val_index = {}
  end

=begin
  :type val: Integer
  :rtype: Boolean
=end
  def insert(val)
    return false if @val_index.key?(val)

    @val_index[val] = @vals.size
    @vals << val
    
    true
  end

=begin
  :type val: Integer
  :rtype: Boolean
=end
  def remove(val)
    return false unless @val_index.key?(val)

    idx = @val_index[val]
    last = @vals.pop
    @val_index.delete(val)

    unless idx == @vals.size
      @val_index[last] = idx
      @vals[idx] = last
    end
          
    true
  end

=begin
  :rtype: Integer
=end
  def get_random()
    @vals[Random.rand(@vals.size)]
  end
end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()
