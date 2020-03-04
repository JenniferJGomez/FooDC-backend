class Restaurant < ApplicationRecord

    has_many :bookmarked_restaurants
    has_many :reviews
    has_many :users, through: :bookmarked_restaurants
    # has_many :users, through: :reviews
    has_many :user_reviews, :class_name => "User"
end
