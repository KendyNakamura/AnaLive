class HomeController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @posts = Post.order('created_at desc').page(params[:page])
    @post = Post.new
    @comments = Comment.order('created_at desc')
    @comment = Comment.new
  end

  def users
    @users = User.all
  end
end
