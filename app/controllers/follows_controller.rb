class FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)
    @follow.save
    redirect_to '/home/users'
  end

  def destroy
    @follow = Follow.find_by(follow_params)
    @follow.destroy
    redirect_to '/home/users'
  end

  protected

  def follow_params
    params.require(:follow).permit(:following_id, :followed_id)
  end
end
