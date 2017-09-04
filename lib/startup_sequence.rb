class StartUpSequence
  attr_reader :player_input
              :instructions
  def start
    @player_input = nil
    "Welcome to BATTLESHIP!\n\n"
  end

  def options
    puts "Would you like to (p)lay, read the (i)nstrucitons, or (q)uit?"
    @player_input = gets.chomp.downcase
    if @player_input == "p" || @player_input == "play"
      #initialize ship placement sequence
    elsif @player_input == "i" || @player_input == "instructions"
      game_instructions
    elsif @player_input == "q" || @player_input == "quit"
      end_game
    else
      "WARNING: Invalid entry!"
      options
    end
  end

  def game_instructions
    "BATTLESHIP is a guessing game. Each player starts by placing ships of
    various sizes on their map. They then take turns firing upon their opponent by
    calling out coordinates on their playing field. If a player's fire results in a 'hit',
    their map will be updated, indicating the location in which the hit was made. If
    a player hits every coordinate of their opponent's ship, that ship will sink.
    The game goes on until one player hits and sinks all of their opponents ships -
    that is when the winner is determined.\n\n"
  end

  def end_game
    exit
  end
end
