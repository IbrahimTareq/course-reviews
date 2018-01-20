class UsersController < ApplicationController
  
  def create
    @name = params[:name]
    @email = params[:email]
    @password = params[:password]
    
    @user = User.new(:name => @name, :email => @email, :password => @password)    
    if @user.save
        log_in @user
        redirect_to courses_path, info: "Successful Signup"
    else
        redirect_to root_path, danger: "Unsuccessful Signup"
    end
  end
  
  
end
