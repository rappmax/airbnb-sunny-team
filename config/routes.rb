Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tables, except: [:update, :edit] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:update, :edit] do
    resources :reviews, only: [:new, :create]
  end

  get '/dashboard', to: 'dashboards#show'
  get '/users/:id', to: 'users#show'

end
