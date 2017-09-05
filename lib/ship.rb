class Ship
  attr_reader :ship_length
              :coordinates
  def initialize(length, coordinates)
    @ship_length = length
    @coordinates = coordinates
  end
