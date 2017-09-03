require 'minitest/autorun'
require 'minitest/pride'
require './lib/gameboard'

class GameBoardTest < Minitest::Test
  def test_that_it_exists
    map = GameBoard.new
    assert_instance_of GameBoard, map
  end

  def test_it_starts_with_empty_field
    map = GameBoard.new
    assert_nil map.field
  end

  def test_it_starts_with_empty_field
    map = GameBoard.new
    assert_nil map.grid
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
