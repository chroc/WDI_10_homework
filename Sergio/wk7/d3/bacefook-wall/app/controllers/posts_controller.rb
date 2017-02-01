class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(params.permit(:id))
    @comments = @post.comments
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: 'index'
    end
  end

  def post_params
    params.permit(:id, :content)
  end

end
