class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @reviews = @book.reviews.all
  end

  def create
    @book = Book.new(book_params)    
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :year, :description, :category)
  end
end
