Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "homes/about"

  resources :books, only: [:index, :create, :show, :edit, :destory] do

  end
  resources :users, only: [:show, :edit, :update]

end
