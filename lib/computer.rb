require './lib/gameboard'

class Computer
  attr_reader :gameboard

  def initialize
    @gameboard = GameBoard.new
    @gameboard.grid = {
            "A1"=>[false, ""], "A2"=>[true, ""], "A3"=>[false, ""], "A4"=>[false, ""],
            "B1"=>[false, ""], "B2"=>[true, ""], "B3"=>[false, ""], "B4"=>[false, ""],
            "C1"=>[false, ""], "C2"=>[false, ""], "C3"=>[false, ""], "C4"=>[false, ""],
            "D1"=>[false, ""], "D2"=>[true, ""], "D3"=>[true, ""], "D4"=>[true, ""]
            }
  end

  

end
