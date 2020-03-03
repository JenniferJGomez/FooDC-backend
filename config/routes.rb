Rails.application.routes.draw do
  resources :reviews
  resources :restaurants, only: [:index, :show]
  resources :users, only: [:show]
  post '/bookmarked_restaurants', to: 'restaurants#bookmarks'
  delete '/bookmarked_restaurants/:user_id/:restaurant_id', to: 'restaurants#destroy'
  post'/reviews', to: 'restaurants#reviews'
end
