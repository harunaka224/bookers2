class BooksController < ApplicationController
  def index
    @books = Book.new
  end

  def show
    @book = Book.new
  end

  def edit
  end
end
