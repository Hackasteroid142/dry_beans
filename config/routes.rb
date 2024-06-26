Rails.application.routes.draw do
  resources :deliveries
  resources :trips
  resources :roads
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/roads/:id/details", to: "roads#road_with_details", as: :road_with_details

  post "/trips/:id/delivery", to: "trips#create_delivery", as: :create_delivery

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
