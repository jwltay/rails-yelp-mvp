class RestaurantController < ApplicationController
  before_action :set_restaurants, only: %i[index]

  def index
    @restaurants
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def set_restaurants
    @restaurants = Restaurant.all
  end
end
