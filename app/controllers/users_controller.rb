class UsersController < ApplicationController

  def show
    # get the user with id :id (got from the URL)
    @user = User.find(params[:id])
  end

  def new

  end

end
