class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new(params)
  end

  private

  def params
    ############here?
  end

end
