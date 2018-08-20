Rails.application.routes.draw do
  root "static_pages#home"
  get "/signin", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"
  post "/rides/new", to: "rides#new"
  get "/logout" => "sessions#destroy"
  resources :attractions
  resources :users
end
