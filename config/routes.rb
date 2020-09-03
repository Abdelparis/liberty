Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'dashboards#dashboard'
  get '/dashboard/freelancer', to: 'dashboards#freelancer'
  get '/dashboard/company', to: 'dashboards#company'
  patch 'bookings/:id', to: 'bookings#update_status', as:'update_status'
  patch 'bookings/:id/update_review', to: 'bookings#update_review', as:'update_review'
  get '/imbox', to: 'chatrooms#imbox'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :missions, only: [:index, :show, :new, :create, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :users, only: [:show, :edit, :update]
  resources :bookings, only: [:show]
  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end
end
