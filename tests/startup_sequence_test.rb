require 'minitest/autorun'
require 'minitest/pride'
require './lib/startup_sequence'

class StartUpSequenceTest < Minitest::Test
  def test_it_greets_player_when_it_starts
    battleship = StartUpSequence.new
    expected = "Welcome to BATTLESHIP!\n\n"

    assert_equal expected, battleship.start
  end

  def test_it_starts_player_input_is_nil
    battleship = StartUpSequence.new

    assert_nil battleship.player_input
  end

  def test_instructions_gives_details_about_gameplay
    battleship = StartUpSequence.new
    expected = "BATTLESHIP is a guessing game. Each player starts by placing ships of
    various sizes on their map. They then take turns firing upon their opponent by
    calling out coordinates on their playing field. If a player's fire results in a 'hit',
    their map will be updated, indicating the location in which the hit was made. If
    a player hits every coordinate of their opponent's ship, that ship will sink.
    The game goes on until one player hits and sinks all of their opponents ships -
    that is when the winner is determined.\n\n"

    assert_equal expected, battleship.game_instructions
  end

end






































#
# def test_that_it_exists
#   # skip
#   new_game = StartUpSequence.new
#   assert_instance_of StartUpSequence, new_game
# end
#
# def test_new_instance_returns_with_a_greeting
#   # skip
#   new_game = StartUpSequence.new
#   assert "Welcome to BATTLESHIP!", new_game.greeting
# end
#
# def test_options_returns_string_with_options
#   # skip
#   new_game = StartUpSequence.new
#   expected = "Would you like to (p)lay, read the (i)nstrucitons, or (q)uit?"
#   assert_equal expected, new_game.options
# end
#
# def test_game_instructions_returns_helpful_instructions
#   # skip
#   new_game = StartUpSequence.new
#   expected = "BATTLESHIP is a guessing game. Each player starts by placing ships of
#   various sizes on their map. They then take turns firing upon their opponent by
#   calling out coordinates on their playing field. If a player's fire results in a 'hit',
#   their map will be updated, indicating the location in which the hit was made. If
#   a player hits every coordinate of their opponents ship, that ship will sink.
#   The game goes on until one player hits and sinks all of their opponents ships -
#   that is when the winner is determined.\n\n"
#
#   assert_equal expected, new_game.game_instructions
# end
