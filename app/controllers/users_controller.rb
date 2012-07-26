class UsersController < ApplicationController
  def index
  end

  def show
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
  end
end
