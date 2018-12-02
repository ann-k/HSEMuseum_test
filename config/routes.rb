Rails.application.routes.draw do
  devise_for :users
  resources :annotations
  resources :placements
  resources :galleries
  resources :artworks
  resources :collaborations
  resources :collectives
  resources :artists

  root 'galleries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
