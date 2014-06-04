Rails.application.routes.draw do
  resources :sessions, only: [:create, :destroy]
  resources :users
  resources :companies
  resources :company_users
  root 'users#index'
end
