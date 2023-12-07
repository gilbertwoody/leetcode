MOD = 1_000_000_007

# @param {Integer} n
# @return {Integer}
def count_vowel_permutation(n)
  a = e = i = o = u = 1
  2.upto(n) do
    a1 = e 
    e1 = (a + i) % MOD
    i1 = (a + e + o + u) % MOD
    o1 = (i + u) % MOD
    u1 = a 
    a, e, i, o, u = a1, e1, i1, o1, u1
  end

  (a + e + i + o + u) % MOD
end
