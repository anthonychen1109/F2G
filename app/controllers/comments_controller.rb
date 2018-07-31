class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
      redirect_to post_path(@comment)
  end

  def show
    @comment = Comment.find(params[:id])
  end


  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
