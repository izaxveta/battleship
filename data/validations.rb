require 'lib/ship'
require 'lib/board'

class ShipValidations
  attr_reader :ship_length,
              :coordinates

  def initialize(ship_length)
    @boardmap =
    @ship_length = ship_length
    @orientation = nil
    @parameters = ["A1", "A2", "A3", "A4",
                  "B1", "B2", "B3", "B4",
                  "C1", "C2", "C3", "C4",
                  "D1", "D2", "D3", "D4"]
  end
  #======================================================VALIDATIONS
  # PLACING FIRST SHIP
  # Get user input coordinates
  # Determine if coordinates are within parameters
  # Determine if coordinates are diagonal
  # Determine orientation
  # Given orientation, determine length of coordinates
  # If coordinate_length != ship_length, gets new coordinates
  # If coordinate_length == ship_length, place ship

  #PLACING SECOND SHIP
  # Get user input coordinates
  # Determine if coordinates are within parameters
  # Determine if coordinates are diagonal
  # Determine orientation
  # Given orientation, determine length of coordinates
  # If coordinate_length != ship_length, gets new coordinates
  If coordinate_length == ship_length Determine overlap
  If second ship does not overlap first ship, Determine wrap

  If second ship does not wrap, place ship
  #==============================================================

  def determine_within_parameters
    #@player_input = gets.chomp
    @coordinates = @player_input.split(" ")
    @coordinates.each do |point|
      if @parameters.include?(point) == false
        puts "Coordinates entered are out of range.
        Please enter valid ship coordinates."
        determine_within_parameters
      else
        determine_diagonal
      end
    end
  end

  def determine_diagonal
    if (@coordinates[0][0] != @coordinates[1][0]) == true && (@coordinates[0][1] != @coordinates[1][1]) == true
      puts "WARNING: You entered diagonal coordinates. Please enter a set of valid coordinates."
      determine_within_parameters
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
      determine_within_parameters
    else
      if @ship_length == 3
        fill_ship_three_horizontally
      else
        determine_overlap
      end
    end
  end

  def determine_vertical_length
      coordinate_letters = [@coordinates[0][0], @coordinates[1][0]].sort
      coordinate_length = coordinate_letters[0].ord - coordinate_letters[1].ord-1
      if coordinate_length.abs != @ship_length
        puts "WARNING: Invalid coordinates. Coordinates must reflect ship length.
        Please re-enter valid coordinates."
        determine_within_parameters
      else
        if @ship_length == 3
          fill_ship_three_vertically
        else
          determine_overlap
        end
      end
  end

  def fill_ship_three_vertically
    @ship = ["#{@coordinates[0]}",
    "#{(@coordinates[0][0].next.concat(@coordinates[0][1]))}",
    "#{@coordinates[1]}"]
    determine_overlap
  end

  def fill_ship_three_horizontally
    @ship = ["#{@coordinates[0]}",
    "#{(@coordinates[0][0].concat(@coordinates[0][1].next))}",
    "#{@coordinates[1]}"]
    determine_overlap
  end

  def determine_overlap
    @ship.each do |
  end

end
