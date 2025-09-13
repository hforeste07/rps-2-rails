class RockController < ApplicationController
  def move
    @player_move = "rock"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "We tied!"
    elsif @comp_move == "paper"
      @outcome = "We lose!"
    else
      @outcome = "We win!"
    end

    render({ :template => "game_templates/play_rock" })
  end

end
