Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/new'
  get 'restaurants/create'
  get 'restaurants/new'
  get 'restaurants/index'
  get 'restaurants/show'
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[new create]
  end

  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'
  # # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # A visitor can add a new review to a restaurant
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  # post 'restaurants/:restaurant_id/reviews', to: 'review#create'
end
