class ApplicationController < ActionController::Base
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])_
  end
end
