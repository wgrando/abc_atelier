Rails.application.routes.draw do

  get  'products'     => 'products#index' # Product Index (Show All Products)
  get  'products/:id' => 'products#show', as: 'product', id: /\d+/ # Product Show (Show A Product)

  post 'products_search' => 'products#search', as: 'search_products'

  root to: 'products#index'

  resources :products
 

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
