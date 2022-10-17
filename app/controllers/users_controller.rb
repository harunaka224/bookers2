class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit

  end

  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to user_path(@user.id)
  end


  private

  def user_params
    params.require(:user).permit(:name, :Introduction, :profile_image)
  end
end
