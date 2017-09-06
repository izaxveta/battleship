class Player
  attr_reader :battlefield

  def initialize
    @battlefield = GameBoard.new
    @score = 0
  end

  def shot_sequence
    @battlefield.render_grid.render_input_log.render_field

    @target = gets.chomp
    validate_target_input
    check_score
  end

  def validate_target_input
    @battlefield.possible_input.each do |point|
      if point.include?(@target) == false
        puts "WARNING! Please enter a valid target."
        shot_sequence
      else
        @possible_input.delete(@target)
        @input_log << @target
        hit_miss(@target)
      end
    end
  end

  def hit_miss(target)
    if @battlefield.grid[target][0] == true
      @battlefield.grid[target][1] = "H"
      @score += 1
    else
      @battlefield.grid[target][1] = "M"
    end
  end

  def check_score
    win_sequence if @score == 5
  end

  def win_sequence
    "You win."
  end

end
