class UserSessionsController < ApplicationController
  history_skip :login, :create, :destroy
  
  def login
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully logged in."
      redirect_back
    else
      render :action => 'login'
    end
  end
  
  def destroy
    @user_session = UserSession.new(params[:user_session])
    @user_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_back
  end
  
end
