require './lib/ship'
require './lib/gameboard'

class ShipValidations
  attr_reader :ship_length,
              :coordinates,
              :validated_coordinates
  attr_accessor :input

  def initialize(ship_length)
    @ship_length = ship_length
    @orientation = nil
    @parameters = ["A1", "A2", "A3", "A4",
                  "B1", "B2", "B3", "B4",
                  "C1", "C2", "C3", "C4",
                  "D1", "D2", "D3", "D4"]
    @validated_ship = nil
    @input = nil
    @valid_count = 0
  end

  def determine_within_parameters
    @coordinates = @input.split(" ")
    @coordinates.each do |point|
      if @parameters.include?(point) == false
        puts "Coordinates entered are out of range.\n\nPlease enter valid ship coordinates."
        start_over
      else
        @valid_count += 1
      end
    determine_diagonal if @valid_count == 2
    end
  end

  def determine_diagonal
    if (@coordinates[0][0] != @coordinates[1][0]) == true && (@coordinates[0][1] != @coordinates[1][1]) == true
      puts "WARNING: You entered diagonal coordinates. Please enter a set of valid coordinates."
      start_over
    else
      determine_orientation
    end
  end

  def determine_orientation
    if @coordinates[0][1] == @coordinates[1][1]
      @orientation = "vertical"
      determine_vertical_length
    else
      @orientation = "horizontal"
      determine_horizontal_length
    end
  end

  def determine_horizontal_length
    coordinate_numbers = [@coordinates[0][1].to_i, @coordinates[1][1].to_i].sort
    coordinate_length = coordinate_numbers.inject(:+)-1
    if coordinate_length != @ship_length
      puts "WARNING: Invalid coordinates. Coordinates must reflect ship length.
      Please re-enter valid coordinates."
      start_over
    else
      if @ship_length == 3
        fill_ship_three_horizontally
      else
        create_validated_ship(@coordinates)
      end
    end
  end

  def determine_vertical_length
      coordinate_letters = [@coordinates[0][0], @coordinates[1][0]].sort
      coordinate_length = coordinate_letters[0].ord - coordinate_letters[1].ord-1
      if coordinate_length.abs != @ship_length
        puts "WARNING: Invalid coordinates. Coordinates must reflect ship length.
        Please re-enter valid coordinates."
        start_over
      else
        if @ship_length == 3
          fill_ship_three_vertically
        else
          create_validated_ship(@coordinates)
        end
      end
  end

  def fill_ship_three_vertically
    @ship = ["#{@coordinates[0]}",
    "#{(@coordinates[0][0].next.concat(@coordinates[0][1]))}",
    "#{@coordinates[1]}"]
    create_validated_ship(@ship)
  end

  def fill_ship_three_horizontally
    @ship = ["#{@coordinates[0]}",
    "#{(@coordinates[0][0].concat(@coordinates[0][1].next))}",
    "#{@coordinates[1]}"]
    create_validated_ship(@ship)
  end

  def create_validated_ship(coordinates)
    @validated_coordiates = coordinates
  end

  def get_input
    @input = gets.chomp.upcase
  end

  def start_over
    get_input
    determine_within_parameters
  end
end

x = ShipValidations.new(3)
x.input = "A1 C1"
# x.input = "A1 B3"
x.determine_within_parameters
# require 'pry'; binding.pry
