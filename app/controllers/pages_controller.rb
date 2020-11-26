class PagesController < ApplicationController
  def welcome
  end

  def issue
  end

  def subscribe
    @subscriber = Subscriber.new
  end


  def functions
  end

  def team
  end


end
