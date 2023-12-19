# @param {Integer[][]} img
# @return {Integer[][]}
def image_smoother(img)
  m, n = img.size, img.first.size
  smooth = Array.new(m) { Array.new(n) }
  0.upto(m - 1) do |i|
    0.upto(n - 1) do |j|
      l = j > 0 ? j - 1 : 0
      r = j < n - 1 ? j + 1 : n - 1
      u = i > 0 ? i - 1 : 0
      d = i < m - 1 ? i + 1 : m - 1

      sum = count = 0
      u.upto(d) do |p|
        l.upto(r) do |q|
          sum += img[p][q]
          count += 1
        end
      end
      smooth[i][j] = sum / count
    end
  end

  smooth
end
