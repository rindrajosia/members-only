Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/private'
  root 'posts#index'
  resources :posts, only: [:index, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
