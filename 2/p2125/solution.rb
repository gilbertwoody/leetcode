# @param {String[]} bank
# @return {Integer}
def number_of_beams(bank)
  count = bank.map { |row| row.count("1") }.reject(&:zero?)
  count.each_cons(2).sum { |a, b| a * b }
end
