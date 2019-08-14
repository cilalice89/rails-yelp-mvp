class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    # raise
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant:@restaurant)
  end

   def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render:new
    end

   end
   def restaurant_params
    params.require(:restaurant).permit(:name,:address,:phone_number,:category)
  end
end
