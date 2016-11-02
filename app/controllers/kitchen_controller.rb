class KitchenController < ApplicationController
  def order
    @user = User.find(session[:user_id])
  end
end
