class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.valid?
      @user.save
      redirect_to user_path
    else
      flash[:errors]
      redirect_to posts_path
    end
  end

end
