Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show]
  resources :users, only: [:show]
  post '/bookmarked_restaurants', to: 'restaurants#bookmarked_restaurants'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
