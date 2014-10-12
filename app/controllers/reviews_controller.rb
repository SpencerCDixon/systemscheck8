class ReviewsController < ApplicationController
  
  def new
    @review = Review.new
    @book = Book.find(params[:book_id])
  end

  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book_id = @book.id

    if @review.save!
      redirect_to @book
    else
      render 'new'
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
