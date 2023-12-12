require "algorithms"

# @param {Integer[][]} events
# @return {Integer}
def max_events(events)
  events.sort!
  heap = Containers::MinHeap.new
  count, i, n = 0, 0, events.size

  0.upto(100_000) do |d|
    heap.pop until heap.empty? || heap.next >= d

    until i == n || events[i][0] != d
      heap << events[i][1]
      i += 1
    end
    
    unless heap.empty?
      heap.pop
      count += 1
    end
  end

  count
end
