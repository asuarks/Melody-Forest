Rails.application.routes.draw do
  namespace :accounts do
    get 'avatars/edit'
    get 'avatars/update'
  end

    resource :account, :only => [:show] do
      resource :name, :only => [:edit, :update], module: "accounts"
      resource :avatar, :only => [:edit, :update], module: "accounts"

      # ユーザ名、パスワード、email の変更
      resource :name, :only => [:edit, :update], module: "accounts"
      resource :email, :only => [:edit, :update], module: "accounts"
      resource :password, :only => [:edit, :update], module: "accounts"
    end

    # devise_for :users
    devise_for :users, controllers: {
        sessions:      'users/sessions',
        passwords:     'users/passwords',
        registrations: 'users/registrations'
    }

  root "posts#index"
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update, :show]
  resources :posts do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
