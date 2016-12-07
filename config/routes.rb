Rails.application.routes.draw do
  get 'welcome/index'

  resource :session, only: [:new, :create, :destroy]
  resources :clients, except: [:index]

end
