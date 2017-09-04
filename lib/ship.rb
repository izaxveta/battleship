class Ship
  attr_reader :length
              :coordinate_one
              :coordinate_two
  def initialize(length, coordinate_one, coordinate_two)
    @length = length
    @coordinate_one = coordinate_one
    @coordinate_two = coordinate_two
    @orientation
  end

#=========VALIDATIONS
Get user input coordinates
Determine if coordinates are diagonal
Determine orientation
Determine if coordinate length == 3
If coordinate length == 3, complete empty ship coordinates
Determine length of coordinates
If orientation of first ship is valid, place ship


3. Determine if ships overlap


#DETERMINE IF USER INPUT SHIP THAT IS DIAGONAL
if coordinate[0][0] != coordinate[1][0] #|| coordinate[0][1] != coordinate[1][1]
  puts "WARNING: Please enter a valid coordinate"
  #return to ship placement sequence
elsif coordinate[0][1] != coordinate[1][1]
  puts "WARNING: Please enter a valid coordinate"
else
  "Ship is either vertical or horizontal."
end


#DETERMINING SHIP ORIENTATION
if coordinates[0][1] == coordinates[1][1]
  @orientation = "vertical"
else coordinates [0][0] == coordinates[1][0]
  @orientation = "horizontal"


#VALIDATE COORDINATE LENGTH == SHIP LENGTH
#DETERMINING COORDINATE LENGTH IF ON THE SAME ROW
if @orientation = "horizontal"
user_input = "A1 A3"
coordinates = user_input.split(" ")
coordinates = ["A1", "A3"]
coordinate_numbers = [coordinates[0][1].to_i, coordinates[1][1].to_i].sort
coordinate_length = coordinate_numbers.inject(:+)-1
#IF COORDINATE LENGTH != SHIP LENGTH RETURN INVALID INPUT

#DETERMINING COORDINATE LENGTH IF ON THE SAME COLUMN
else @orientation = "vertical"
user_input = "A1 C1"
coordinates = user_input.split(" ")
coordinates = ["A1", "C1"]
coordinate_letters = [coordinates[0][0], coordinates[1][0]].sort
coordinate_length = coordinate_letters.inject(:+)-1

coordinate_letters = "#{coordinates[0][0]}".."#{coordinates[1][0]}".to_a


#IF COORDINATE LENGTH != SHIP LENGTH RETURN INVALID INPUT


#MAKING A 3 COORDINATE SHIP FILL VERTICALLY
ship_one = ["A1", "C1"]
ship_one = ["#{ship_one[0]}",
            "#{(ship_one[0][0].next.concat(ship_one[0][1]))}",
            "#{ship_one[1]}"]
ship_one.length

#MAKING A 3 COORDINATE SHIP FILL HORIZONTALLY
ship_one = ["C1", "C3"]
ship_one = ["#{ship_one[0]}",
            "#{(ship_one[0][0].concat(ship_one[0][1].next))}",
            "#{ship_one[1]}"]
ship_one.length


# Ships cannot overlap
# Ships can be laid either horizontally or vertically
# Coordinates must correspond to the first and last units of the ship.
# (IE: You can’t place a two unit ship at “A1 A3”)
