Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index]
  resources :comments, only: [:index]
  resources :posts, only: [:index]
  resources :follows
end
