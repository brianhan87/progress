class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      auto_login(@user)
      UserMailer.welcome_email(@user).deliver
      redirect_to new_goal_path
    else
      render :new, :alert => "Please try again"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
  end

  def show
    @user = User.find(params[:id])
  end
end
