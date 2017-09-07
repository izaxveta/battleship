require './lib/gameboard'
require './lib/validations'

class Player
  attr_reader :gameboard,
              :input

  def initialize
    @gameboard = GameBoard.new
    @input = nil
  end

  def validate_ship(ship_length)
    validate_ship = ShipValidations.new(ship_length)
    validate_ship.get_input.determine_within_parameters
    @valid_ship = Ship.new(validate_ship.validated_coordiates, validate_ship.ship_length)
  end

  def create_ship(ship)
    @gameboard.place_ship(ship)
  end

  def check_overlap(ship)
    ship.coordinate_range.each do |point|
      if @gameboard.grid[point][0] == false
        puts "#{point} does not overlap another ship."
      else
        puts "WARNING: #{point} overlaps another ship. Please place ship in valid position."
        validate_ship(3)
      end
    end
  end

  def get_input
    @input = gets.chomp.upcase
  end
end
