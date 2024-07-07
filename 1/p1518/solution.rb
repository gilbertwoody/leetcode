# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def num_water_bottles(num_bottles, num_exchange)
  drinks = num_bottles
  until num_bottles < num_exchange
    q, r = num_bottles.divmod(num_exchange)
    drinks += q
    num_bottles = q + r
  end

  return drinks
end
