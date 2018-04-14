class HomeController < ApplicationController
  def index
    @users = User.all.page(params[:page])
    @user = current_user
    @posts = Post.order('created_at desc')
  end
end
