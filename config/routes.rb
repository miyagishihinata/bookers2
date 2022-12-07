Rails.application.routes.draw do
  get 'home/about' => "homes#about"
  root to: "homes#top", as:'homes'
  devise_for :users

  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:show, :edit, :update, :index, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
