class UsersController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]
  before_filter :require_not_login, :only => [:new, :create]

  def index
    @users = User.all
  end

  # action show get id from post request then find user to show on views
  def show
    @user = User.find(params[:id])
    @relationship = Relationship.new

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

  def follower
     @user = User.find(params[:id])
     @followers = @user.follower_users
   end

   def following
     @user = User.find(params[:id])
     @followings = @user.following_users
   end

end
