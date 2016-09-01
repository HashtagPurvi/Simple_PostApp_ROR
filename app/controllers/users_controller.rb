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
end
