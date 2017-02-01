class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    #..
  end

  def create
    @comment = Comment.new(comment_params)
    if comment_params[:content] == "" or comment_params[:content] == nil
      redirect_to "/wall"
    else
      if @comment.save
        redirect_to "/wall"
      end
    end
  end

  def comment_params
    params.permit(:post_id, :content)
  end

end
