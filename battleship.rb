require './lib/game_sequence'

class StartUpSequence
  attr_accessor :player_input

  def initialize
    @player_input = nil
    puts "\n\nWelcome to BATTLESHIP!\n"
    border
  end

  def show_options
    puts "\nWould you like to (p)lay, read the (i)nstrucitons, or (q)uit?\n\n"
  end

  def analyze_input
    if @player_input == "p" || @player_input == "play"
      puts "\nMay the odds be ever in your favor!"
      border
    elsif @player_input == "i" || @player_input == "instructions"
      game_instructions
    elsif @player_input == "q" || @player_input == "quit"
      puts "\nWell then...\n\n"
      exit
    else
      puts ">:("
      sleep(2)
      puts "\n\nWARNING: Invalid entry!"
      show_options
    end
  end

  def get_input
    @player_input = gets.chomp.downcase
  end

  def game_instructions
    puts "
    \nBATTLESHIP is a guessing game. Each player starts by placing
    ships of various sizes on their map. They then take turns firing upon
    their opponent by calling out coordinates on their playing field.
    If a player's fire results in a 'hit', their map will be updated,
    indicating the location in which the hit was made. If a player hits
    every coordinate of their opponent's ship, that ship will sink.
    The game goes on until one player hits and sinks all of their
    opponents ships - that is when the winner is determined.\n\n"
    border
    show_options
  end

  def border
    puts "\n____________________________________________________________\n"
  end
end

new_game = StartUpSequence.new
new_game.show_options
  until new_game.player_input == "p" || new_game.player_input == "P" do
  new_game.get_input
  new_game.analyze_input
  end
battleship = GameSequence.new
battleship.display_coordinate_prompt
battleship.player_start(2)
