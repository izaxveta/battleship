require 'minitest/autorun'
require 'minitest/pride'
require './lib/validations'

class ShipValidationsTest < Minitest::Test
  def test_it_takes_ship_length_argument
    miniboat = ShipValidation.new
    
  end

end
