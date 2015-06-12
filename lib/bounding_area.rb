class BoundingArea
  attr_reader :bounding_area

  def initialize(bounding_area)
    @bounding_area = bounding_area
  end

  def contains_point?(x, y)
    return false if @bounding_area.empty?
    bounding_area.each do |box|
      return true if box.contains_point?(x, y)
    end
    false
  end
end
