Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'

  get '/home/about' => 'homes#about'

  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
