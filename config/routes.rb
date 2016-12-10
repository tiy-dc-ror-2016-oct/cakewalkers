Rails.application.routes.draw do

  resource :cart, only: [:destroy]
  resources :client_orders, only: [:show]
  resources :products
  resources :line_items, except: [:show, :new]
  resource :session, only: [:new, :create, :destroy]
  resources :users, except: [:index]
  resources :orders, except: [:show, :destroy] do
    member do
      get '/status', action: :status, as: :status
      patch '/delivered', action: :delivered, as: :delivered
    end
  end
  root "welcome#index"
end
