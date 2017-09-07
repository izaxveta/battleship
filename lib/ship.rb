class Ship
  attr_reader :coordinate_range,
              :length
  def initialize(coordinate_range, length)
    @coordinate_range = coordinate_range
    @length = length
  end
end
