class RestaurantsController < ApplicationController

  def index
    all_restaurants = Restaurant.all
    render json: all_restaurants.to_json()

  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant.to_json()
  end
end
