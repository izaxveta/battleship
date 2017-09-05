require 'lib/ship'

class GameBoard
  attr_reader :possible_input,
              :input_log,
              :field,
              :grid
  def initialize
    @possible_input = ["A1", "A2", "A3", "A4",
                       "B1", "B2", "B3", "B4",
                       "C1", "C2", "C3", "C4",
                       "D1", "D2", "D3", "D4"]
    @input_log = []
    @grid = nil
    @field = nil
  end

  def render_grid
    @grid = {
            "A1"=>{false, ""}, "A2"=>{false, ""}, "A3"=>{false, ""}, "A4"=>{false, ""},
            "B1"=>{false, ""}, "B2"=>{false, ""}, "B3"=>{false, ""}, "B4"=>{false, ""},
            "C1"=>{false, ""}, "C2"=>{false, ""}, "C3"=>{false, ""}, "C4"=>{false, ""},
            "D1"=>{false, ""}, "D2"=>{false, ""}, "D3"=>{false, ""}, "D4"=>{false, ""}
            }
  end

  def render_field
    @field = "B A T T L E S H I P
      ~~~~~~~~~~~~~~~~~~~
      .   1   2   3   4

      A #{@grid["A1"][1]} #{@grid["A2"][1]} #{@grid["A3"][1]} #{@grid["A4"][1]}

      B #{@grid["B1"][1]} #{@grid["B2"][1]} #{@grid["B3"][1]} #{@grid["B4"][1]}

      C #{@grid["C1"][1]} #{@grid["C2"][1]} #{@grid["C3"][1]} #{@grid["C4"][1]}

      D #{@grid["D1"][1]} #{@grid["D2"][1]} #{@grid["D3"][1]} #{@grid["D4"][1]}
      ~~~~~~~~~~~~~~~~~~~"
  end

  def render_input_log
    @input_log.each do |shoot|
      if @grid[shoot][0] = true
        @grid[shoot][1] = "H"
      else
        @grid[shoot][1] = "M"
      end
  end

  def place_ship(ship)
    ship.coordinates.each do |point|
      @grid[point][0] = true
    end
  end



end

game = GameBoard.new
# require 'pry'; binding.pry
