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
    @x + @width
  end

  def bottom
    @y
  end

  def top
    @y + @height
  end

  def contains_point?(x_of_point, y_of_point)
    x_in_box = x_of_point >= left && x_of_point <= right
    y_in_box = y_of_point >= bottom && y_of_point <= top
    x_in_box && y_in_box
  end
end
