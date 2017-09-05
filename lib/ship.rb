class Ship
  attr_reader :ship_length
              :coordinates
  def initialize(ship_length, coordinates)
    @ship_length = ship_length
    @coordinates = coordinates
  end
