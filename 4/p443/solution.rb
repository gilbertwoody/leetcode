# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  i = res = 0
  n = chars.size

  while i < n
    len = 1
    len += 1 while i + len < n && chars[i] == chars[i + len]

    chars[res] = chars[i]
    res += 1

    slen = len.to_s
    if len > 1
      0.upto(slen.size - 1) do |k|
        chars[res] = slen[k]
        res += 1
      end
    end

    i += len
  end

  return res
end
