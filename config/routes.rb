Rails.application.routes.draw do

  root to: 'homes#top'
  devise_for :users
  get "homes/about" => "homes#about", as:"about"

  resources :books, only: [:index, :create, :show, :edit, :destory]
  resources :users, only: [:show, :edit]

end
