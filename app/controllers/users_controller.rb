class UsersController < ApplicationController
  
  #Creates a New User 
  def new
  	@user = User.new
  end

  #Lists all the users
  def index
  	@users = User.all
  end

  # Shows a Particular User Page
  def show
  	@user = User.find(params[:id])
  end

  # Creates a New User Profile
  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Welcome To Your Profile"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  private
	  def user_params
	  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
	  end


end
