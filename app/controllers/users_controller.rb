class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def index
  end
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
  end
end
