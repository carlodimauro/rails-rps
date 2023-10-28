class GameController < ApplicationController

  def play_rock

    cpu_selection = ["rock", "paper", "scissors"]

    @cpu_move = cpu_selection.sample

    if @cpu_move == "rock"
      @outcome = "tied"
    elsif @cpu_move == "scissors"
      @outcome = "won"
    else
      @outcome = "lose"
    end



    render({ :template => "/gametemplates/play_rock"})

  end
end
