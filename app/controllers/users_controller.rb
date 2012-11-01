class UsersController < ApplicationController
  def index
    @users = User.all
  end

  # action show get id from post request then find user to show on views
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = "Sign up successfully."
      redirect_to root_url
    else
      render :action => :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update_attributes(params[:user])
      flash[:notice] = "Your profile was updated."
      redirect_to user_url(@user)
    else
      render :action => :edit
    end
  end

end
