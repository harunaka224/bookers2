class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    user = User.new(user_params)
    user.save
    redirect_to users_path
  end
  
  def index
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
