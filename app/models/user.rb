class User < ApplicationRecord

    has_many :bookmarked_restaurants
    has_many :reviews
    has_many :restaurants, through: :bookmarked_restaurants
    has_many :reviewed_restaurants, :class_name => "Restaurant"
    # has_many :restaurants, :as => :reviewed_restaurants

end
