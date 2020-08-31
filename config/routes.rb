Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'dashboards#dashboard'
  get '/dashboard/freelancer', to: 'dashboards#freelancer'
  get '/dashboard/company', to: 'dashboards#company'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :missions, only: [:index, :show, :new, :create, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :update]
  resources :users, only: [:show, :update]
end
