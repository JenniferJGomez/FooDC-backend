class ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews.to_json(
      :include => [{:restaurant =>
        {:except => [:created_at, :updated_at]}}, 
        {:user => {:except => [:created_at, :updated_at]}}]  
    )
  end

  def show
  end

  def destroy
  end

  def update
  end
end
