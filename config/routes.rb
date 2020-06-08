Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update, :show]
  resources :posts do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
