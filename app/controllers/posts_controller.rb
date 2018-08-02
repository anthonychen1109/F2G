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
    # if !@post.post_image.attached?
    #   flash[:error] = "We were unable to destroy the Item"
    # end
    if @post.save
      redirect_to user_path(@post)
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @user = current_user
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  # def upvote
  #   @post = Post.find(params[:id])
  #   @post.likes += 1
  # end
  #
  # def downvote
  #   @post = Post.find(params[:id])
  #   @post.likes -= 1
  # end


  private
  def post_params
    params.require(:post).permit(:image, :location, :user_id, :post_image, :caption)
  end
end
