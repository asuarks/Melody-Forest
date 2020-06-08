Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update, :show]
  resources :users, only: :show
end
