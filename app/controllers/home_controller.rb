class HomeController < ApplicationController
  before_action :users_params, only: [:index, :users]
  before_action :post_params, only: [:show, :destroy]
  before_action :posts_params, only: [:show]
  before_action :comment_params, only: [:index, :show]

  def index
    @user = current_user
    @post = Post.new
    @posts = Post.order('created_at desc').page(params[:page])
  end

  def users
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def destroy
    @delete_comment = Comment.where(post_id: @post.id)
    if @post.destroy && @delete_comment.delete_all
      flash[:notice] = '投稿を削除しました。'
      redirect_to home_path
    else
      flash[:notice] = '投稿が削除できませんでした。'
      render 'index'
    end
  end

  private

  def users_params
    @users = User.all
  end

  def posts_params
    @posts = Post.order('created_at desc')
  end

  def post_params
    @post = Post.find_by(params[:id])
  end

  def comment_params
    @comments = Comment.order('created_at desc')
    @comment = Comment.new
  end
end
