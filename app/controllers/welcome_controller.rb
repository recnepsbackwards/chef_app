class WelcomeController < ApplicationController
  def register
    if params.has_key?(:user_name) && !params[:user_name].strip.empty? && params.has_key?(:password) && !params[:password].strip.empty?
      user_name = params[:user_name].strip
      password = params[:password].strip
      user = User.new
      user.name = user_name
      user.password = password
      user.save
      session[:user_id] = user.id.to_s
      redirect_to '/kitchen/order'
    else
      render 'register'
    end
  end
end
