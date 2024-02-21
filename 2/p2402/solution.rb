require "algorithms"

include Containers

# @param {Integer} n
# @param {Integer[][]} meetings
# @return {Integer}
def most_booked(n, meetings)
  meetings.sort_by!(&:first)

  room_count = Array.new(n, 0)
  ongoing_meeting = MinHeap.new
  available_room = MinHeap.new((0...n).to_a)

  meetings.each do |s, e|
    until ongoing_meeting.empty? || ongoing_meeting.next.first > s
      available_room << ongoing_meeting.pop.last
    end

    if available_room.empty? 
      e1, i = ongoing_meeting.pop
      e += e1 - s if e1 > s
    else
      i = available_room.pop
    end

    ongoing_meeting << [e, i]
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