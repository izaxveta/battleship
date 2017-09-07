require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_sequence'
require './lib/computer'

class GameSequenceTest < Minitest::Test
  def test_that_it_exists
    battleship = GameSequence.new

    assert_instance_of GameSequence, battleship
  end

  def test_it_starts_with_a_new_computer_instance
    battleship = GameSequence.new

    assert_instance_of Computer, battleship.computer
  end

  def test_it_also_starts_with_a_new_player_instance
    battleship = GameSequence.new

    assert_instance_of Player, battleship.player
  end

  def test_computer_has_its_own_gameboard
    battleship = GameSequence.new

    assert_instance_of GameBoard, battleship.computer.gameboard
  end

  def test_sequence_displays_nothing_upon_initialization
    battleship = GameSequence.new

    assert_nil battleship.display
  end

  def test_sequence_input_is_nil_nothing_upon_initialization
    battleship = GameSequence.new

    assert_nil battleship.input
  end

  def test_computer_has_5_true_ship_places_on_grid
    battleship = GameSequence.new
    expected = {
              "A1"=>[false, ""], "A2"=>[true, ""], "A3"=>[false, ""], "A4"=>[false, ""],
              "B1"=>[false, ""], "B2"=>[true, ""], "B3"=>[false, ""], "B4"=>[false, ""],
              "C1"=>[false, ""], "C2"=>[false, ""], "C3"=>[false, ""], "C4"=>[false, ""],
              "D1"=>[false, ""], "D2"=>[true, ""], "D3"=>[true, ""], "D4"=>[true, ""]
              }
    assert_equal expected, battleship.computer.gameboard.grid
  end

  def test_player_has_no_true_ship_places_on_grid
    battleship = GameSequence.new
    expected = {
              "A1"=>[false, ""], "A2"=>[false, ""], "A3"=>[false, ""], "A4"=>[false, ""],
              "B1"=>[false, ""], "B2"=>[false, ""], "B3"=>[false, ""], "B4"=>[false, ""],
              "C1"=>[false, ""], "C2"=>[false, ""], "C3"=>[false, ""], "C4"=>[false, ""],
              "D1"=>[false, ""], "D2"=>[false, ""], "D3"=>[false, ""], "D4"=>[false, ""]
              }
    assert_equal expected, battleship.player.gameboard.grid
  end

  def test_display_coordinate_prompt_displays_enter_coordinates
    battleship = GameSequence.new
    battleship.display_coordinate_prompt
    expected = "I have laid out my ships on the grid.
                You now need to layout your two ships.
                The first is two units long and the
                second is three units long.
                The grid has A1 at the top left and D4 at the bottom right.

                Enter the squares for the two-unit ship:"

    assert_equal expected, battleship.display
  end

end
