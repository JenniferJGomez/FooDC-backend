require 'rest-client'
require 'json'
require 'byebug'

key = Rails.application.credentials.yelp[:api_key]

response_yelp = RestClient.get("https://api.yelp.com/v3/businesses/search?categories=restaurants&location=Washington D.C.", {"Authorization" => "Bearer #{key}"})

response = JSON.parse(response_yelp)
byebug
0
