Rails.application.routes.draw do
  get 'users/edit' => 'users#edit'
  get 'users/:id' => 'users#show'

  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/destroy'
  get 'home/about' => "homes#about", as:'about'
  root to: "homes#top", as:'homes'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
