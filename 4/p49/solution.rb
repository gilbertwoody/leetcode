# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  known = {}
  strs.each_with_object([]) do |s, res|
    k = s.each_char.sort.join
    if known.key?(k)
      res[known[k]] << s
    else
      known[k] = res.size
      res << [s]
    end
  end
end
