Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "/about" => "homes#about"

  resources :books, only: [:index, :create, :show, :edit, :destory, :new]
  resources :users, only: [:show, :edit, :update]
end
