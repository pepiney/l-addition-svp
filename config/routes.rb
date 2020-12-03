Rails.application.routes.draw do
  # get 'orders/index'
  # get 'orders/show'
  # get 'orders/create'
  # get 'orders/edit'
  # get 'orders/destroy'
  # get 'tables/index'
  # get 'tables/show'
  devise_for :users
  root to: 'pages#home'
  get "/admin", to: 'pages#restaurant_admin'
  get "/profil", to: 'pages#profil'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :meals
    resources :tables
  end

  resources :tables do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, except: [:new, :create] do
    resources :orders, only: [:new, :create, :index]
  end

  resources :customers
  resources :orders, only: [:show, :update, :edit, :destroy]
end
