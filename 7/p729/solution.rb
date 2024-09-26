class MyCalendar
  def initialize()
    @pool = []
  end

=begin
  :type start: Integer
  :type end: Integer
  :rtype: Boolean
=end
  def book(from, to)
    i = @pool.bsearch_index { |from1, _| from1 >= to }
    i = @pool.size if i.nil?
    ok = i.zero? || @pool[i-1][1] <= from
    @pool.insert(i, [from, to]) if ok
    ok
  end
end

