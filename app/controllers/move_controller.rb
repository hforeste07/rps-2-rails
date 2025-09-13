class MoveController < ApplicationController
  def rock
    @player_move = "rock"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "It's a tie!"
    elsif @comp_move == "paper"
      @outcome = "You lose!"
    else
      @outcome = "You win!"
    end

    render({ :results => "/views/layouts/move_templates"} )
  end

  def scissors
    @player_move = "scissors"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "You lose!"
    elsif @comp_move == "paper"
      @outcome = "You win!"
    else
      @outcome = "It's a tie!"
    end

    render(:result => "move_templates")
  end

  def paper
    @player_move = "paper"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "You win!"
    elsif @comp_move == "paper"
      @outcome = "It's a tie!"
    else
      @outcome = "You lose!"
    end

    render("move_templates")
  end
end
