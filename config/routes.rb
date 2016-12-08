Rails.application.routes.draw do


  resources :client_orders, only: [:show]

  resources :products
  resources :line_items, except: [:show, :new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :session, only: [:new, :create, :destroy]
  resources :clients, except: [:index]
  resources :orders, only: [:new, :create, :edit, :update, :destroy]
  root "welcome#index"
end
