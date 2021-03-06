Rails.application.routes.draw do

  root to: 'events#index'
  # get 'home/index'
  # get 'home/secret'
  devise_for :users
  resources :events do
    resources :attendances, only: [:new, :create, :index]
  end
  resources :users, only: [:show]
  resources :charges


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
