class UsersController < ApplicationController

  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(session[:user_id])
    @posts = current_user.posts
    @all_posts = Post.all
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :bio, :pro_image, :password, :password_confirmation, :avatar)
  end

end
