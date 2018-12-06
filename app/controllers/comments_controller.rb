class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comments_params)
    unless @comment.save
      p "****************"
      p @comment.errors
      p "****************"

    end
  end

  private
  def comments_params
    params.require(:comment).permit(:description, :post_id)
  end

end
