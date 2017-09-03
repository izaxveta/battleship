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

  def test_it_starts_with_empty_grid
    map = GameBoard.new

    assert_nil map.grid
  end

  def test_it_starts_with_empty_field
    map = GameBoard.new

    assert_nil map.field
  end

  def test_rendering_grid_creates_new_grid
    map = GameBoard.new

    assert_nil map.grid

    map.render_grid
    expected = {
              "A"=>{"1"=>[false, ""], "2"=>[false, ""], "3"=>[false, ""], "4"=>[false, ""]},
              "B"=>{"1"=>[false, ""], "2"=>[false, ""], "3"=>[false, ""], "4"=>[false, ""]},
              "C"=>{"1"=>[false, ""], "2"=>[false, ""], "3"=>[false, ""], "4"=>[false, ""]},
              "D"=>{"1"=>[false, ""], "2"=>[false, ""], "3"=>[false, ""], "4"=>[false, ""]}
              }

    assert_equal expected, map.grid
  end

  def test_must_render_grid_before_rendering_field
    map = GameBoard.new

    assert_nil map.field
    assert_nil map.grid
    
    map.render_grid
    expected = map.render_field

    assert_equal expected, map.field
  end
end
