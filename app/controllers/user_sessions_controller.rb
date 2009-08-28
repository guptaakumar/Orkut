class UserSessionsController < ApplicationController
  def new
    if current_user.nil?
      @user_session = UserSession.new
    else
      logger.debug("#{current_user.inspect}")
      logger.debug("#{params["user_session"]}")
      redirect_to perfil_path(current_user.perfil)
    end
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully logged in."
      redirect_to perfil_url(current_user.perfil)
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find(params[:id])
    @user_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end
end
