# @param {String} pressed_keys
# @return {Integer}
def count_texts(pressed_keys)
  table1, table2 = [1], [1]

  key_counts = []
  prev, count = pressed_keys[0], 1
  pressed_keys[1..].each_char do |key|
    if key == prev
      count += 1
    else
      key_counts << [prev, count]
      prev, count = key, 1
    end
  end
  key_counts << [prev, count]

  result = 1
  key_counts.each do |k, c|
    table, max = if k == "7" || k == "9"
      [table1, 4]
    else
      [table2, 3]
    end
    result *= dp(c, max, table)
    result %= 1_000_000_007
  end

  result
end

def dp(n, max, table)
  return 0 if n < 0

  memo = table[n]
  return memo if memo

  total = 0
  1.upto(max) do |right|
    total += dp(n - right, max, table)
    total %= 1_000_000_007
  end

  table[n] = total
end

