class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

end
