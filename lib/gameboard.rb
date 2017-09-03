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
            "A"=>{"1"=>[false, ""], "2"=>[false, ""], "3"=>[false, ""], "4"=>[false, ""]},
            "B"=>{"1"=>[false, ""], "2"=>[false, ""], "3"=>[false, ""], "4"=>[false, ""]},
            "C"=>{"1"=>[false, ""], "2"=>[false, ""], "3"=>[false, ""], "4"=>[false, ""]},
            "D"=>{"1"=>[false, ""], "2"=>[false, ""], "3"=>[false, ""], "4"=>[false, ""]}
            }
  end

  def render_field
    @field = "B A T T L E S H I P
      ~~~~~~~~~~~~~~~~~~~
      .   1   2   3   4

      A #{@grid["A"]["1"][1]} #{@grid["A"]["2"][1]} #{@grid["A"]["3"][1]} #{@grid["A"]["4"][1]}

      B #{@grid["B"]["1"][1]} #{@grid["B"]["2"][1]} #{@grid["B"]["3"][1]} #{@grid["B"]["4"][1]}

      C #{@grid["C"]["1"][1]} #{@grid["C"]["2"][1]} #{@grid["C"]["3"][1]} #{@grid["C"]["4"][1]}

      D #{@grid["D"]["1"][1]} #{@grid["D"]["2"][1]} #{@grid["D"]["3"][1]} #{@grid["D"]["4"][1]}
      ~~~~~~~~~~~~~~~~~~~"
  end

end

game = GameBoard.new
# require 'pry'; binding.pry
