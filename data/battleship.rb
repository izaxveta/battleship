require 'lib/startup_sequence'
require 'lib/gameboard'
require 'lib/validations'
require 'lib/ship'

battleship = StartUpSequence.new
battleship.options

puts "I have laid out my ships on the grid.
You now need to layout your two ships.
The first is two units long and the
second is three units long.
The grid has A1 at the top left and D4 at the bottom right.

Enter the squares for the two-unit ship:"

little_ship = ShipValidations.new(2)
little_ship.determine_within_parameters
cruiser = little_ship.make_ship


big_ship = ShipValidations.new(3)
big_ship.determine_within_parameters
destroyer = big_ship.make_ship
