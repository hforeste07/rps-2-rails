class ScissorsController < ApplicationController
  def move
    @player_move = "scissors"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "scissors"
      @outcome = "We tied!"
    elsif @comp_move == "rock"
      @outcome = "We lose!"
    else
      @outcome = "We win!"
    end

    render({ :template => "game_templates/play_scissors" })
  end

end
