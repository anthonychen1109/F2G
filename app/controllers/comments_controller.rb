class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new(post_id: params[:post_id], user_id: params[:user_id])
    @user = current_user.id
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_path(@comment.post_id)
    else
      render :new
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end


  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
