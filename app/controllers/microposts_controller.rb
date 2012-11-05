class MicropostsController < ApplicationController
  def index
    @micropost = Micropost.new
  end

  def create
    @micropost = current_user.microposts.new(params[:micropost])

    if @micropost.save
      flash[:notice] = "Post successfully."
      redirect_to root_url
    else
      render :action => "index"
    end
  end

  def destroy
    @micropost = Micropost.find(params[:id])
    @micropost.destroy
    redirect_to :back
  end
end
