Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/home'
  get 'home', to: 'pages#index'
  get 'pines', to: 'pins#pines'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
