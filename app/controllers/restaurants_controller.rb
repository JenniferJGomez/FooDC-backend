class RestaurantsController < ApplicationController

  def index
    all_restaurants = Restaurant.all
    render json: all_restaurants.to_json(
      :include => {:users =>
        {:except => [:created_at, :updated_at]}}
    )

  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant.to_json()
  end
end
