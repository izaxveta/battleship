class Ship
  attr_reader :coordinate_range,
              :size
  def initialize(coordinate_range, size)
    @coordinate_range = coordinate_range
    @size = size
  end
end
