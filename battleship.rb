require 'lib/startup_sequence'
require 'lib/gameboard'
require 'lib/ship'

battleship = StartUpSequence.new
battleship.options

puts "I have laid out my ships on the grid.
You now need to layout your two ships.
The first is two units long and the
second is three units long.
The grid has A1 at the top left and D4 at the bottom right.

Enter the squares for the two-unit ship:"
