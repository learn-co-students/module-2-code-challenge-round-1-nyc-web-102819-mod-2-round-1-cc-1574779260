Rails.application.routes.draw do
#heroines
  get '/heroines', to: "heroines#index", as: "heroines"
  get '/heroines/new', to: "heroines#new", as: "new_heroine"
  post '/heroines', to: "heroines#create"
  get '/heroines/:id', to: "heroines#show", as: "heroine"

#powers
  get '/powers', to: "powers#index", as: "powers"


  get '/powers/:id', to: "powers#show", as: "power"
end