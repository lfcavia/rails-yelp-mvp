Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end

  # # --- READ
  # get  "restaurants", to: "restaurants#index"

  # # --- CREATE
  # # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # get "restaurants/new", to: "restaurants#show"
  # post "restaurants", to: "resturants#create"

  # # --- REVIEW READ
  # # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET "restaurants/38"

  # # --- REVIEW CREATE
  # # A visitor can add a new review to a restaurant
  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"
end
