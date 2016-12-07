Rails.application.routes.draw do
  resources :products
  resources :line_items, except: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :session, only: [:new, :create, :destroy]
  resources :clients, except: [:index]
  resources :orders, only: [:new, :create, :edit, :update, :destroy, :show]
  root "welcome#index"
end
