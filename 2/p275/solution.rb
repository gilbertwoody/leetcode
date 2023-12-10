# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
  size = citations.size
  l, r, h = 0, size - 1, 0
  while l <= r
    m = (l + r) / 2

    cites = citations[m]
    papers = size - m  
    if cites >= papers
      h = papers 
      r = m - 1
    else
      l = m + 1
    end
  end

  return h
end
