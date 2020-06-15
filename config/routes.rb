Rails.application.routes.draw do
  resource :account, :only => [:show]

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
  end
  resources :users, only: :show
end
