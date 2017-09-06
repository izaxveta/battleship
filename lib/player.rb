require './lib/gameboard'

class Player
  attr_reader :gameboard,
              :input

  def initialize
    @gameboard = GameBoard.new
    @input = nil
  end

  def validate_ship(ship_length)
    validate_ship = ShipValidations.new(ship_length)
    valid_ship = Ship.new(validate_ship.validated_coordiates)
  end

  # def create_ship(coordinate_range, size)
  #   if size == 2
  #     @cruiser = Ship.new(coordinate_range, size)
  #   elsif size == 3
  #     @destroyer = Ship.new(coordinate_range, size)
  #   end
  # end

  def get_input
    @input = gets.chomp.upcase
  end
end
