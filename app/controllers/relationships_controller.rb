class RelationshipsController < ApplicationController
  
  before_action :authenticate_user!
  
  def create
    user = User.find(params[:user_id])
    current_user.follow(user)
    redirect_to request.referer #遷移元のURLに戻る
  end
  
  def destroy
    user = User.find(params[:user_id])
    current_user.unfollow(user)
    redirect_to request.referer
  end
  
  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end
  
  def follower
    user = User.find(params[:user_id])
    @users = user.follower
  end
end
