class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save(post_params)
      flash[:notice] = "successfully created app"
      redirect_to post_path(@post)
    else
      flaseh[:alert] = "Error creating new post!"
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
