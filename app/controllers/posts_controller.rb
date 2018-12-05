class PostsController < ApplicationController

  def index
    @posts = Post.all
    @post = Post.new
    respond_to do |format|
      format.html{}
      format.json{render json:@posts}
    end
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save
        respond_to do |format|
          format.html{redirect_to '/'}
          format.json{render json:post}
        end
      end
    end

  private
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
