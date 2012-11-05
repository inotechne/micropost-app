class RelationshipsController < ApplicationController
  def create
    current_user.follow(params[:relationship][:following_id])
    redirect_to user_url(params[:relationship][:following_id])
  end

  def destroy
    current_user.unfollow(params[:relationship][:following_id])
    redirect_to user_url(params[:relationship][:following_id])
  end

end
