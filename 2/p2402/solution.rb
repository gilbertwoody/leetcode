require "algorithms"

include Containers

# @param {Integer} n
# @param {Integer[][]} meetings
# @return {Integer}
def most_booked(n, meetings)
  meetings.sort_by!(&:first)

  room_count = Array.new(n, 0)
  heap = MinHeap.new

  meetings.each do |s, e|
    i = heap.size
    until heap.empty? || heap.next.first > s
      _, j = heap.pop
      i = j if j < i
    end

    if heap.size == n
      e1, i = heap.pop
      e += e1 - s if e1 > s
    end

    heap << [e, i]
    room_count[i] += 1
  end

  max, maxi = -1, -1
  room_count.each_with_index do |count, i|
    if count > max
      max, maxi = count, i
    end
  end

  maxi
end
