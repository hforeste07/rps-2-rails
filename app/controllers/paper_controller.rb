class PaperController < ApplicationController
  def move
    @player_move = "paper"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "paper"
      @outcome = "We tied!"
    elsif @comp_move == "scissors"
      @outcome = "We lose!"
    else
      @outcome = "We win!"
    end

    render({ :template => "game_templates/play_paper" })
  end

end
