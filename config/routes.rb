Rails.application.routes.draw do

  get 'about/index'

  get  'products'     => 'products#index' # Product Index (Show All Products)
  get  'products/:id' => 'products#show', as: 'product', id: /\d+/ # Product Show (Show A Product)

  get 'products/cart' => 'products#cart'

  get 'category/:id' => 'products#sort_by_category', as: 'category', id: /\d+/

  get 'about' => 'about#index', as: 'about'

  post 'products_search' => 'products#search', as: 'search_products'

  root to: 'products#index'

  resources :products, only: [:index] do
  	member do
  	  post :remember_to_call
  	  post :mark_as_called
  	end
  	collection do
  		post :mark_all_as_called
  	end
  end
 

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
