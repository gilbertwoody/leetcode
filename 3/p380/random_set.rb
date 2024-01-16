class RandomizedSet
  def initialize()
    @vals = []
    @next = 0
    @val_index = {}
  end

=begin
  :type val: Integer
  :rtype: Boolean
=end
  def insert(val)
    return false if @val_index.key?(val)

    @vals << val
    @val_index[val] = @next
    @next += 1

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
    unless idx == @next - 1
      @val_index[last] = idx
      @vals[idx] = last
    end
    @val_index.delete(val)
    @next -= 1

    true
  end

=begin
  :rtype: Integer
=end
  def get_random()
    @vals[Random.rand(@next)]
  end
end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()