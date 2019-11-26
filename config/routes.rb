Rails.application.routes.draw do

  # powers
  get '/powers', to: "powers#index", as: "powers"
  get '/powers/:id', to: "powers#show", as: "power"
  # resources :powers, only: [:index]

  # heroines
  get '/heroines', to: "heroines#index", as: "heroines"
  post '/heroines', to: "heroines#create"
  get '/heroines/new', to: "heroines#new", as: "new_heroine"
  get '/heroines/:id', to: "heroines#show", as: "heroine"
  
  # resources :heroines, only: [:index]  
end
