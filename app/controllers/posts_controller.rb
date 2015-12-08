class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: :new
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to "puppies"
  end

  def edit
  end

  def update
    @post.update(post_params)
    flash[:success] = "Post successfully updated."
    redirect_to posts_path
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:image, :description)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
