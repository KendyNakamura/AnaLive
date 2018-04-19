class CommentsController < ApplicationController
  def create
    @comment = Comment.new(post_params)
    if @comment.save
      flash[:notice] = 'コメントしました'
    else
      flash[:error] = 'コメントを入力してください'
    end
    redirect_to :root
  end

  protected

  def post_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end
end
