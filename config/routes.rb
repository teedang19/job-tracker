Rails.application.routes.draw do

  resources :users
  resources :companies
  resources :company_users
  root 'users#index'
end
