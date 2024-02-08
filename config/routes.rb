Rails.application.routes.draw do
  get "up", to: "rails/health#show", as: :rails_health_check

  root to: "restaurants#index"

  resources :restaurants, only: [:new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end

end

  # resources :restaurant do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "posts#index"

  # Read all
  # root to: "restaurants#index"
  # Create a new restaurant
  # get "restaurants/new", to: "restaurants#new",  as: :new_restaurant
  # post "restaurants", to: "restaurants#create"
  # See details of a restaurant:
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

