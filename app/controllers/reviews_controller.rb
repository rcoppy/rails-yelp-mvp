class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
    Review.restaurant_id = params[:id]
    redirect_to restaurant_path(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
