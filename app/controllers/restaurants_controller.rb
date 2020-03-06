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
    render json: restaurant.to_json(
      :include => {:reviews =>
        {:except => [:created_at, :updated_at]}}
    )
  end

  def bookmarks
    bookmark = BookmarkedRestaurant.find_or_create_by(user_id: params[:user_id], restaurant_id: params[:restaurant_id])
    render json: bookmark
  end

  def reviews
    review = Review.find_or_create_by(user_id: params[:user_id], restaurant_id: params[:restaurant_id], review: params[:review])
    render json: review
  end

  def destroy
    bookmark = BookmarkedRestaurant.find_by(user_id: params[:user_id], restaurant_id: params[:restaurant_id])
    BookmarkedRestaurant.destroy(bookmark.id)
  end

end
