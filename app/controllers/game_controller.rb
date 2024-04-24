class GameController < ApplicationController
  def show
    @us = params[:page_name]
    @them = ['rock', 'paper', 'scissors'].sample
    @result = ''
      
    if @us == 'rock'
      if @them == 'rock'
        @result = 'tied'
      elsif @them == 'scissors'
        @result = 'won'
      else
        @result = 'lost'
      end
    elsif @us == 'scissors'
      if @them == 'rock'
        @result = 'lost'
      elsif @them == 'scissors'
        @result = 'tied'
      else
        @result = 'won'
      end
    else
      if @them == 'rock'
        @result = 'won'
      elsif @them == 'scissors'
        @result = 'lost'
      else
        @result = 'tied'
      end
    end
  end
end
