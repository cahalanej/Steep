class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
    def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
