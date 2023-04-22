class LoginController < ApplicationController
  def new
  end

  def create
    # user = User.find_by(email: params[:email])
    # if user && user.authenticate(params[:password])
    #   session[:user_id] = user.id
    #   redirect_to library_index_path, notice: 'Logged in!'
    # else
    #   flash.now[:alert] = 'Invalid email or password'
    #   render :new
    #   redirect_to library_index_path, notice: 'Logged in!'
    # end
    redirect_to library_index_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out!'
  end
end

