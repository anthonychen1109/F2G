class PostsController < ApplicationController

  before_action :authorized

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @user = current_user.id
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to user_path(@post)
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  private
  def post_params
    params.require(:post).permit(:image, :location, :user_id, :post_image, :caption)
  end
end
