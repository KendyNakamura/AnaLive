class PostsController < ApplicationController
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:notice] = '投稿しました'
    else
      flash[:error] = 'YoutubeのURLを入力してください。'
    end
    redirect_to :root
  end

  protected

  def post_params
    params.require(:post).permit(:body, :movie_id)
  end
end
