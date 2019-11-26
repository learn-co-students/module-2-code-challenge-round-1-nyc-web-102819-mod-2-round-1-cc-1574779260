Rails.application.routes.draw do
  get '/heroines', to: 'heroines#index', as: 'heroines'
  get '/heroines/new', to: 'heroines#new', as: 'new_heroine'
  post '/heroines', to: 'heroines#create'
  get '/heroines/:id', to: 'heroines#show', as: 'heroine'  

  get '/powers', to: 'powers#index', as: 'powers'
  get '/powers/:id', to: 'powers#show', as: 'power'

end
