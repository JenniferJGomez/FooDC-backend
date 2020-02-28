class Restaurant < ApplicationRecord

    has_many :bookedmarked_restaurants
    has_many :users, through: :bookedmarked_restaurants

end
