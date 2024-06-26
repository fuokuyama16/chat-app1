Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 root to: "rooms#index"
resources :users, only: [:edit, :update]
resources :rooms, only: [:new, :create, :destroy] do
  resources :messages, only: [:index, :create]
end
end
