Rails.application.routes.draw do
  devise_for :users
  get 'home/about'
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:show, :index, :edit, :create, :update, :destroy]
  root to: 'home#top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
