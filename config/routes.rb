Rails.application.routes.draw do
  
  devise_for :users
  get 'pages/index'
  get 'pages/home'

post 'pins/:id/like', as: 'pins_like', to: 'pins#like'

  #get 'home', to: 'pages#index'
  #get 'pines', to: 'pins#pines'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pins

  root 'pins#index'
end
