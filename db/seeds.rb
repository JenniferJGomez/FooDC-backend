require 'rest-client'
require 'json'
require 'byebug'

Restaurant.destroy_all

key = Rails.application.credentials.yelp[:api_key]

response_yelp = RestClient.get("https://api.yelp.com/v3/businesses/search?categories=restaurants&location=Washington D.C.", {"Authorization" => "Bearer #{key}"})

response = JSON.parse(response_yelp)

response_array = response["businesses"]

response_array.each do |restaurant|
    name = restaurant["name"]
    image_url = restaurant["image_url"]
    url = restaurant["url"]
    display_phone = restaurant["display_phone"]
    rating = restaurant["rating"]
    categories = restaurant["categories"][0]["title"]
    price = restaurant["price"]

    Restaurant.create(name: name, img_url: image_url, url: url, display_phone: display_phone, rating: rating, category: categories, price: price)
end

