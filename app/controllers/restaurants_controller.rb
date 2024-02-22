class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    # we need value so find.params[:id] WORKS, but NOT key so find(:id) DOSEN'T WORK
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(resto_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def resto_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
