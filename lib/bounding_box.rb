class BoundingBox
  attr_reader :width, :height
  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    left + width
  end

  def bottom
    @y
  end

  def top
    bottom + height
  end

  def contains_point?(x_of_point, y_of_point)
    x_of_point.between?(left, right) && y_of_point.between?(bottom, top)
  end
end
