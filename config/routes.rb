Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:index, :show, :new, :create] do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
