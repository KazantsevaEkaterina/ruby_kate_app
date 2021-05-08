Rails.application.routes.draw do
  resources :users
  resources :values
  resources :themes
  resources :images
  resources :sessions, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    match 'next_image',       to: 'api#next_image',   via: :get
    match 'prev_image',       to: 'api#prev_image',   via: :get
    match 'save_value',       to: 'api#save_value',   via: :get
  end

  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'

  match 'work', to: 'work#index',via: 'get'
  match 'choose_image',     to: 'work#choose_image',      via: :get
  match 'choose_theme', to: 'work#choose_theme', via: :get
  match 'display_theme', to: 'work#display_theme', via: :post, as: :js

  match 'results_list',     to: 'work#results_list', via: :get

  match 'save_value',       to: 'api/api#save_value',   via: :get

  match 'signup',   to: 'users#new',            via: 'get'
  match 'signin',   to: 'sessions#new',         via: 'get'
  match 'signout',  to: 'sessions#destroy',     via: 'delete'

  root 'work#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end