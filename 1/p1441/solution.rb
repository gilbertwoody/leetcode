# @param {Integer[]} target
# @param {Integer} n
# @return {String[]}
def build_array(target, n)
  result = []
  target.prepend(0).each_cons(2) do |a, b|
    (b - a - 1).times do 
      result << "Push" << "Pop"
    end
    result << "Push"
  end

  result
end
