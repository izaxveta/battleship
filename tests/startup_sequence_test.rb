require 'minitest/autorun'
require 'minitest/pride'
require './lib/startup_sequence'

class StartUpSequenceTest < Minitest::Test

  def test_that_it_exists
    battleship = StartUpSequence.new

    assert_instance_of StartUpSequence, battleship
  end

  def player_input_starts_off_as_nil
    battleship = StartUpSequence.new

    assert_nil battleship.player_input
  end

  def test_it_greets_player_when_it_starts
    battleship = StartUpSequence.new
    expected = "Welcome to BATTLESHIP!\n\n"

    assert expected, battleship
  end

  def test_show_options_puts_string_of_options
    battleship = StartUpSequence.new
    expected = "Would you like to (p)lay, read the (i)nstrucitons, or (q)uit?"

    assert expected, battleship.show_options
  end

  def test_player_input_i_returns_game_instructions
    battleship = StartUpSequence.new
    battleship.player_input = "i"
    expected = "BATTLESHIP is a guessing game. Each player starts by placing
    ships of various sizes on their map. They then take turns firing upon
    their opponent by calling out coordinates on their playing field.
    If a player's fire results in a 'hit', their map will be updated,
    indicating the location in which the hit was made. If a player hits
    every coordinate of their opponent's ship, that ship will sink.
    The game goes on until one player hits and sinks all of their
    opponents ships - that is when the winner is determined.\n\n"

    assert expected, battleship.analyze_input
  end
end
