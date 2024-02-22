class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    # we need both parameters @restaurant, @review, that we link together in new FORM view
  end

  def create
    @review = Review.new(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save

    redirect_to restaurant_path(@restaurant)
  end
end
