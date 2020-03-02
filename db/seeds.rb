require 'rest-client'
require 'json'
require 'byebug'

Restaurant.destroy_all
BookmarkedRestaurant.destroy_all

key = Rails.application.credentials.yelp[:api_key]

response_yelp = RestClient.get("https://api.yelp.com/v3/businesses/search?categories=restaurants&location=Washington D.C.", {"Authorization" => "Bearer #{key}"})

response = JSON.parse(response_yelp)

response_array = response["businesses"]
# byebug

response_array.each do |restaurant|
    name = restaurant["name"]
    image_url = restaurant["image_url"]
    url = restaurant["url"]
    display_phone = restaurant["display_phone"]
    rating = restaurant["rating"]
    categories = restaurant["categories"][0]["title"]
    price = restaurant["price"]
    display_address = restaurant["location"]["display_address"][0]

    Restaurant.create(name: name, img_url: image_url, url: url, display_phone: display_phone, rating: rating, category: categories, price: price, display_address: display_address)
end

User.create(name: "Jenny", username: "JennyFromTheBlock")

BookmarkedRestaurant.create(user_id: 1, restaurant_id: 222)
BookmarkedRestaurant.create(user_id: 1, restaurant_id: 227)


