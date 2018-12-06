class PostsController < ApplicationController

  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save

      end
    end

    def show
      @post = Post.find(params[:id])
    end

    def destroy
      post = Post.find(params[:id])
      post.destroy
      redirect_to '/'
    end

  private
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
