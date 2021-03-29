Rails.application.routes.draw do
  root 'work#index'

  get 'work/index'
  get 'work/choose_theme'
  get 'work/display_theme'
  resources :themes
  resources :images
  resources :values
  resources :users
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  # work

  match 'work', to: 'work#index', via: 'get'
  match 'choose_image', to: 'work#choose_image', via: :get
  match 'choose_theme', to: 'work#choose_theme', via: :get
  match 'display_theme', to: 'work#display_theme', via: :post

  #root 'main#index'
end
