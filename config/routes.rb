Rails.application.routes.draw do
  get '/new_featured', controller: :orders, action: :new_featured, as: :new_featured
  resource :cart, only: [:destroy, :show]
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
