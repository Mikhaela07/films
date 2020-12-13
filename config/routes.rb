Rails.application.routes.draw do

  get 'page/index'
  root 'page#index'
  get '/actors', to: 'actors#index', as: 'actor'
  get '/films', to: 'films#index', as: 'films'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
