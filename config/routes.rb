Rails.application.routes.draw do
  get 'homes/about'
  devise_for :users
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:show, :index, :edit]
  root to: 'homes#top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
