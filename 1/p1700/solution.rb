# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
  count = Array.new(2)
  count[0] = students.count(0)
  count[1] = students.size - count[0]
  sw = sandwiches

  count[sw.shift] -= 1 until sw.empty? || count[sw[0]].zero?

  count.sum
end
