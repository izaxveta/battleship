require 'minitest/autorun'
require 'minitest/pride'
require './lib/gameboard'

class GameBoardTest < Minitest::Test
  def test_that_it_exists
    map = GameBoard.new

    assert_instance_of GameBoard, map
  end

  def test_possible_input_represents_spaces_on_grid
    map = GameBoard.new
    expected = ["A1", "A2", "A3", "A4",
                "B1", "B2", "B3", "B4",
                "C1", "C2", "C3", "C4",
                "D1", "D2", "D3", "D4"]

    assert_equal expected, map.possible_input
  end

  def test_new_game_board_starts_with_empty_input_log
    map = GameBoard.new

    assert_equal [], map.input_log
  end

  def test_it_starts_with_grid
    map = GameBoard.new
    expected = {
                "A1"=>[false, ""], "A2"=>[false, ""], "A3"=>[false, ""], "A4"=>[false, ""],
                "B1"=>[false, ""], "B2"=>[false, ""], "B3"=>[false, ""], "B4"=>[false, ""],
                "C1"=>[false, ""], "C2"=>[false, ""], "C3"=>[false, ""], "C4"=>[false, ""],
                "D1"=>[false, ""], "D2"=>[false, ""], "D3"=>[false, ""], "D4"=>[false, ""]
                }

    assert_equal expected, map.grid
  end

  def test_it_starts_with_empty_field
    map = GameBoard.new

    assert_nil map.field
  end

  def test_rendering_field_creates_new_field
    skip
    map = GameBoard.new
    assert_nil map.field

    map.grid
    map.render_field
    expected = "B A T T L E S H I P
      ~~~~~~~~~~~~~~~~~~~
      .   1   2   3   4

      A #{@grid["A1"][1]} #{@grid["A2"][1]} #{@grid["A3"][1]} #{@grid["A4"][1]}

      B #{@grid["B1"][1]} #{@grid["B2"][1]} #{@grid["B3"][1]} #{@grid["B4"][1]}

      C #{@grid["C1"][1]} #{@grid["C2"][1]} #{@grid["C3"][1]} #{@grid["C4"][1]}

      D #{@grid["D1"][1]} #{@grid["D2"][1]} #{@grid["D3"][1]} #{@grid["D4"][1]}
      ~~~~~~~~~~~~~~~~~~~"
    assert_equal expected, map.field
  end
end
