class RestaurantsController < ApplicationController

  def index
    all_restaurants = Restaurant.all
    render json: all_restaurants.to_json()
  end

  def show
  end
end
