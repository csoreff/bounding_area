class BoundingArea
  attr_reader :bounding_box

  def initialize(bounding_box)
    @bounding_box = bounding_box
  end

  def contains_point?(x, y)
    bounding_box.any? { |box| box.contains_point?(x, y) }
  end
end
