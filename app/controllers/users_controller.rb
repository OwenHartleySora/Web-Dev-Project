class UsersController < ApplicationController
  #skip_before_action :authorized, only: [:new, :create]

  def new
  end

  #Attempted fixed that didn't work
  #def session
    #session[:user_id] = @user.id
  #end

  def create
  end
end
