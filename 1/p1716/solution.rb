# @param {Integer} n
# @return {Integer}
def total_money(n)
  q, r = n.divmod(7)
  (7 * (q + 7) * q  + (2 * q + r + 1) * r) / 2
end
