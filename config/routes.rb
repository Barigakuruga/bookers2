Rails.application.routes.draw do
  devise_for :users
  get 'home/about'
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:show, :index, :edit, :new, :create]
  root to: 'home#top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
