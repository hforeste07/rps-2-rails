class ScissorsController < ApplicationController
  def move
    @player_move = "scissors"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "scissors"
      @outcome = "It's a tie!"
    elsif @comp_move == "rock"
      @outcome = "You lose!"
    else
      @outcome = "You win!"
    end

    render({ :template => "game_templates/play_scissors" })
  end

end
