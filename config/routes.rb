Rails.application.routes.draw do
  get 'users/edit' => 'users#edit'
  get 'users/' => 'users#show', as:'users'


  get 'books/' => 'books#index', as:'books'
  post 'books/create' => 'books#create'

  get 'books/new'
  get 'books/show'
  get 'books/destroy'

  get 'home/about' => "homes#about", as:'about'
  root to: "homes#top", as:'homes'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
