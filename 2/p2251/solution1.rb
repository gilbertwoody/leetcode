# Heap solution unfornately meets TLE

require "algorithms"

include Containers

# @param {Integer[][]} flowers
# @param {Integer[]} people
# @return {Integer[]}
def full_bloom_flowers(flowers, people)
  flowers.sort!
  dic = {}
  heap = MinHeap.new

  i = 0
  people.sort.each do |person|
    while i < flowers.size && flowers[i][0] <= person
      heap << flowers[i][1]
      i += 1
    end

    heap.pop until heap.empty? || heap.min >= person

    dic[person] = heap.size
  end

  people.map(&dic.method(:fetch))
end
