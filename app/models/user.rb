class User < ApplicationRecord

    has_many :bookmarked_restaurants
    has_many :restaurants, through: :bookmarked_restaurants

end
