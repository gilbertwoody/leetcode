# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  trib_iter = lambda do |a = 0, b = 1, c = 1, m = n|
    case m
    when 0 then a
    when 1 then b
    when 2 then c
    else
      trib_iter[b, c, a + b + c, m - 1]
    end
  end

  trib_iter[]
end
