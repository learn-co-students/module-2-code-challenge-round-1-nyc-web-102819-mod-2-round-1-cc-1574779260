Rails.application.routes.draw do
  resources :powers, only: [:index]
  get '/powers/:id', to: 'powers#show', as: 'power'
  resources :heroines, only: [:index] 
  get '/heroines/new', to: 'heroines#new', as: 'new_heroine'
  post '/heroines', to: 'heroines#create'
  get '/heroines/:id', to: 'heroines#show', as: 'heroine'
  

end
