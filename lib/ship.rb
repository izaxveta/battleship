class Ship
  attr_reader :length
              :coordinate_one
              :coordinate_two
  def initialize(length, coordinate_one, coordinate_two)
    @ship_length = length
    @coordinate_one = coordinate_one
    @coordinate_two = coordinate_two
    @orientation
  end

#=========VALIDATIONS
#PLACING FIRST SHIP
Get user input coordinates
Determine if coordinates are within parameters
Determine if coordinates are diagonal
Determine orientation
Given orientation, determine length of coordinates
If coordinate_length != ship_length, gets new coordinates
If coordinate_length == ship_length, place ship


#PLACING SECOND SHIP
Get user input coordinates
Determine if coordinates are within parameters
Determine if coordinates are diagonal
Determine orientation
Given orientation, determine length of coordinates
If coordinate_length != ship_length, gets new coordinates
If coordinate_length == ship_length Determine overlap
If second ship does not overlap first ship, Determine wrap
If second ship does not wrap

valid_input = ["A1", "C1"]
invalid_input = ["A1", "E5"]
def determine_within_parameters(coordinates)
  parameters = ["A1", "A2", "A3", "A4",
                "B1", "B2", "B3", "B4",
                "C1", "C2", "C3", "C4",
                "D1", "D2", "D3", "D4"]
  coordinates.each do |point|
    parameters.include?(point)
      if false
        @within_parameters = false
        "Coordinate out of range."
      else
        @within_parameters = true
      end
  end
end

until @within_parameters == true do
  determine_within_parameters()
end




end

def determine_diagonal
  if (coordinates[0][0] != coordinates[1][0]) == true && (coordinates[0][1] != coordinates[1][1]) == true
    puts "WARNING: You entered diagonal coordinates. Please enter a set of valid coordinates."
    #return to ship placement sequence
  else
    "Ship is either vertical or horizontal"
  end
end

def determine_orientation
  @orientation = nil
  if coordinates[0][1] == coordinates[1][1]
    @orientation = "vertical"
  else coordinates [0][0] == coordinates[1][0]
    @orientation = "horizontal"
  end
end

def determine_horizontal_length
  #VALIDATE COORDINATE LENGTH == SHIP LENGTH
  #DETERMINING COORDINATE LENGTH IF ON THE SAME ROW
  user_input = "A1 A3"
  coordinates = user_input.split(" ")
  coordinates = ["A1", "A3"]
  coordinate_numbers = [coordinates[0][1].to_i, coordinates[1][1].to_i].sort
  coordinate_length = coordinate_numbers.inject(:+)-1
  if coordinate_length != @ship_length
    "Invalid coordinates. Coordinates must reflect ship length."
  else
    "Valid"
  end
end

def determine_vertical_length
  #DETERMINING COORDINATE LENGTH IF ON THE SAME COLUMN
    user_input = "A1 C1"
    coordinates = user_input.split(" ")
    coordinates = ["A1", "C1"]
    coordinate_letters = [coordinates[0][0], coordinates[1][0]].sort
    coordinate_length = coordinate_letters[0].ord - coordinate_letters[1].ord-1
    if coordinate_length.abs != @ship_length
      "Invalid coordinates. Coordinates must reflect ship length."
    else
      "Valid"
    end
end

#IF COORDINATE LENGTH != SHIP LENGTH RETURN INVALID INPUT

def fill_ship_three_vertically
  #MAKING A 3 COORDINATE SHIP FILL VERTICALLY
  ship_one = ["A1", "C1"]
  ship_one = ["#{ship_one[0]}",
  "#{(ship_one[0][0].next.concat(ship_one[0][1]))}",
  "#{ship_one[1]}"]
  ship_one.length
end

def fill_ship_three_horizontally
  #MAKING A 3 COORDINATE SHIP FILL HORIZONTALLY
  ship_one = ["C1", "C3"]
  ship_one = ["#{ship_one[0]}",
  "#{(ship_one[0][0].concat(ship_one[0][1].next))}",
  "#{ship_one[1]}"]
  ship_one.length
end
