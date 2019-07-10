class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    review = Review.create(review_params)
    review.restaurant_id = params[:restaurant_id]
    review.save
    redirect_to restaurant_path(params[:restaurant_id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
