class RestaurantsController < ApplicationController
  before_action :set_restaurants, only: %i[index]
  before_action :set_restaurant, only: %i[show]

  def index
    @restaurants
  end

  def show
    @restaurant
  end

  def new
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
end
