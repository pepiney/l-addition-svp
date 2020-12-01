Rails.application.routes.draw do
  get 'tables/index'
  get 'tables/show'
  devise_for :users
  root to: 'pages#home'
  get "/admin", to: 'pages#restaurant_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :meals
    resources :tables
  end

 # resources :customers do
 #   resources :tables
 #   resources :orders
 # end

end
