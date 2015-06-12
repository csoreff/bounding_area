class BoundingArea
  attr_reader :bounding_boxes

  def initialize(bounding_boxes)
    @bounding_boxes = bounding_boxes
  end

  def contains_point?(x, y)
    bounding_boxes.any? { |box| box.contains_point?(x, y) }
  end
end
