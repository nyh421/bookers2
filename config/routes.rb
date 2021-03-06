Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :users, only: [:edit, :index, :show, :update]
  resources :books, only: [:edit, :create, :index, :show, :update, :destroy]
  get "/home/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
