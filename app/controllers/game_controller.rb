class GameController < ApplicationController

  def home
    render({ :template => "/gametemplates/home"})
  end



  def play_rock

    cpu_selection = ["rock", "paper", "scissors"]

    @cpu_move = cpu_selection.sample

    if @cpu_move == "rock"
      @outcome = "tied"
    elsif @cpu_move == "scissors"
      @outcome = "won"
    else
      @outcome = "lost"
    end

    render({ :template => "/gametemplates/play_rock"})

  end

  def play_paper
    cpu_selection = ["rock", "paper", "scissors"]

    @cpu_move = cpu_selection.sample

    if @cpu_move == "paper"
      @outcome = "tied"
    elsif @cpu_move == "rock"
      @outcome = "won"
    else
      @outcome = "lost"
    end

    render({ :template => "/gametemplates/play_paper"})
  end

  def play_scissors
    cpu_selection = ["rock", "paper", "scissors"]

    @cpu_move = cpu_selection.sample

    if @cpu_move == "scissors"
      @outcome = "tied"
    elsif @cpu_move == "paper"
      @outcome = "won"
    else
      @outcome = "lost"
    end

    render({ :template => "/gametemplates/play_scissors"})
  end

end
