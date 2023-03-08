class ReviewsController < ApplicationController
  def show
  end

  private

  def set_reviews
    @reviews = Review.all
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
