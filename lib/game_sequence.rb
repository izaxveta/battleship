require './lib/computer'
require './lib/player'

class GameSequence
  attr_reader :computer,
              :player,
              :display,
              :input

  def initialize
    @computer = Computer.new
    @player = Player.new
    @display = nil
    @input = nil
  end



  def display_coordinate_prompt
    puts @display = "
    \nI have laid out my ships on the grid. You now
      need to layout your two ships. The first is two
      units long and the second is three units long. The
      grid has A1 at the top left and D4 at the bottom right.

      Enter the squares for the two-unit ship:\n\n"
  end

  def get_input
    @input = gets.chomp
  end

  def player_start(ship_size)
    @player.get_input
    @player.validate_ship(ship_size)
  end
end
