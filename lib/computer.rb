class Computer
  attr_reader :battlefield
  
  def initialize
    @battlefield = GameBoard.new
  end

end
