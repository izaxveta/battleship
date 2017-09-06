require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < Minitest::Test

  def test_player_starts_with_their_own_gameboard
    hooman = Player.new

    assert_instance_of GameBoard, hooman.gameboard
  end

  def test_player_input_starts_off_as_nil
    hooman = Player.new

    assert_nil hooman.input
  end

  
end
