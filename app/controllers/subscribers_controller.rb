class SubscribersController < ApplicationController

def create
    @subscriber = Subscriber.new(params_allowed)
    if @subscriber.save
      redirect_to functions_path
    else
      render 'subscribe'
    end
  end

private

  def params_allowed
    params.require(:subscriber).permit(:email)
  end
end
