Rails.application.routes.draw do
  
  
  resources :storages
  devise_for :users

  get 'home/index'
  root to: "stores#index"
  resources :stores
  resources :books
  
  get 'probar', to: 'control#saludo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
