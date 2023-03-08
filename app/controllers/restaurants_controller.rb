class RestaurantsController < ApplicationController
  before_action :set_restaurants, only: %i[index]
  before_action :set_restaurant, only: %i[show]
  before_action :new_restaurant, only: %i[new, create]

  def index
    @restaurants
  end

  def show
    @restaurant
  end

  def new
    @restaurant
  end

  def create
    @restaurant = Restaurant.new
    restaurant = Restaurant.new(restaurant_params)
    if restaurant.save
      redirect_to restaurant_path(restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  private

  def set_restaurants
    @restaurants = Restaurant.all
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def new_restaurant
    @restaurant = Restaurant.new
  end
end
