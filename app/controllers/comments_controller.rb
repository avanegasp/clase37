class CommentsController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    @comment = post.comments.new(comments_params)
    unless @comment.save
      @errors = @comment.errors
    end
  end

  private
  def comments_params
    params.require(:comment).permit(:description, :post_id)
  end

end
