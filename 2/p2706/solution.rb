# @param {Integer[]} prices
# @param {Integer} money
# @return {Integer}
def buy_choco(prices, money)
  m1, m2 = prices[0..1]
  m1, m2 = m2, m1 if m2 < m1

  prices[2..].each do |p|
    if p < m1
      m2, m1 = m1, p
    elsif p < m2
      m2 = p
    end
  end

  m = m1 + m2
  money - (m <= money ? m : 0)
end
