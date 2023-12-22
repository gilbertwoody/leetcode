# @param {String} message
# @param {Integer} limit
# @return {String[]}
def split_message(message, limit)
  f1 = lambda { |n| 3 + 2 * n.to_s.size }
  f2 = lambda do |curr, n|
    curr + message.size + (3 + n.to_s.size) * n
  end

  curr = k = 0
  while f1[k] < limit && f2[curr, k] > limit * k
    k += 1
    curr += k.to_s.size
  end

  result = []
  if f1[k] < limit
    kl = k.to_s.size
    i = 0
    1.upto(k) do |j|
      len = limit - 3 - kl - j.to_s.size
      result << "#{message[i, len]}<#{j}/#{k}>"
      i += len
    end
  end

  result
end
