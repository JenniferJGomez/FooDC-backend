class User < ApplicationRecord

    has_many :bookedmarked_restaurants
    has_many :restaurants, through: :bookedmarked_restaurants

end
