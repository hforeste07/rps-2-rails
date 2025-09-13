class RockController < ApplicationController
  def move
    @player_move = "rock"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "It's a tie!"
    elsif @comp_move == "paper"
      @outcome = "You lose!"
    else
      @outcome = "You win!"
    end

    render({ :template => "game_templates/play_rock" })
  end

end
