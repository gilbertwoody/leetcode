class Solution

=begin
  :type radius: Float
  :type x_center: Float
  :type y_center: Float
=end
  def initialize(radius, x_center, y_center)
    @radius = radius
    @x_center = x_center
    @y_center = y_center
  end
  
  
=begin
      :rtype: Float[]
=end
  def rand_point()
    theta = Random.rand(2 * Math::PI)
    ratio = Math.sqrt(Random.rand)
    x = @x_center + ratio * @radius * Math.sin(theta)
    y = @y_center + ratio * @radius * Math.cos(theta)
    [x, y]
  end
end
  
# Your Solution object will be instantiated and called as such:
# obj = Solution.new(radius, x_center, y_center)
# param_1 = obj.rand_point()
