class PaperController < ApplicationController
  def move
    @player_move = "paper"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "paper"
      @outcome = "It's a tie!"
    elsif @comp_move == "scissors"
      @outcome = "You lose!"
    else
      @outcome = "You win!"
    end

    render({ :template => "game_templates/play_paper" })
  end

end
