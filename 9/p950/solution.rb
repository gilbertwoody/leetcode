# @param {Integer[]} deck
# @return {Integer[]}
def deck_revealed_increasing(deck)
  n = deck.size
  return deck if n < 3

  deck = deck.sort
  result = [deck.pop]

  until deck.size == 1
    result.prepend(deck.pop)
    result.prepend(result.pop)
  end

  result.prepend(deck.pop)
end
