Rails.application.routes.draw do
  resources :actors
  resources :premieres
  resources :teams
  get 'page/index'
  root 'page#index'
  get  '/actors',    to: 'actors#index'
  get '/films', to: 'films#index'
  resources :films
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
