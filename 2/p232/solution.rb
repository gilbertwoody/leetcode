class MyQueue
  def initialize()
    @read = []
    @write = []
  end

=begin
  :type x: Integer
  :rtype: Void
=end
  def push(x)
    @write.push(x)
    transfer if @read.empty?
  end

=begin
  :rtype: Integer
=end
  def pop()
    x = @read.pop
    transfer if @read.empty?

    return x
  end

=begin
  :rtype: Integer
=end
  def peek()
    @read[-1]
  end

=begin
  :rtype: Boolean
=end
  def empty()
    @read.empty?
  end

  private
  def transfer
    @read.push(@write.pop) until @write.empty?
  end
end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
