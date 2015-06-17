class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:session][:email].downcase
    if user.present? && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_back_or "/app"
      # redirect_to "/app"
    else
      flash.now[:notice] = "Invalid login ,please try again ."
      redirect_to login_path

    end


  end

  def destroy 
    session[:user_id] = nil
    @current_user = nil 
    redirect_to root_path
  end 
end
