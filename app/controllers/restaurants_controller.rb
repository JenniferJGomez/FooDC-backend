class RestaurantsController < ApplicationController

  def index
    all_restaurants = Restaurant.all
    render "Hello World"
  end

  def show
  end
end
