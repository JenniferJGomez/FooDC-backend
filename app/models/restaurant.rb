class Restaurant < ApplicationRecord

    has_many :bookmarked_restaurants
    has_many :reviews
    has_many :users, through: :bookmarked_restaurants
    # has_many :users, through: :reviews

end
