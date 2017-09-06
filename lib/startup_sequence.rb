class StartUpSequence
  attr_accessor :player_input

  def initialize
    @player_input = nil
    puts "Welcome to BATTLESHIP!\n\n"
  end

  def show_options
    puts "Would you like to (p)lay, read the (i)nstrucitons, or (q)uit?"
  end

  def analyze_input
    if @player_input == "p" || @player_input == "play"
      battleship = GameSequence.new
    elsif @player_input == "i" || @player_input == "instructions"
      game_instructions
    elsif @player_input == "q" || @player_input == "quit"
      "Well then..."
      exit
    else
      puts ">:("
      sleep(2)
      puts "WARNING: Invalid entry!"
      show_options
    end
  end

  def get_input
    @player_input = gets.chomp.downcase
  end

  def game_instructions
    puts "BATTLESHIP is a guessing game. Each player starts by placing
    ships of various sizes on their map. They then take turns firing upon
    their opponent by calling out coordinates on their playing field.
    If a player's fire results in a 'hit', their map will be updated,
    indicating the location in which the hit was made. If a player hits
    every coordinate of their opponent's ship, that ship will sink.
    The game goes on until one player hits and sinks all of their
    opponents ships - that is when the winner is determined.\n\n"
  end
end

if __FILE__ == $PROGRAM_NAME
new_game = StartUpSequence.new
new_game.show_options
  loop do
  new_game.get_input
  new_game.analyze_input
  end
end
