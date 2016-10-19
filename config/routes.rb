Rails.application.routes.draw do
  devise_for :users
  resources :contacts
  resources :regions
  resources :typ_contacts
  resources :orders
  resources :countries
  resources :products
  resources :subcategories
  resources :categories
  resources :users
  resources :companies
  resources :industries
  resources :fees
  resources :positions
  root 'catalogues#index'
end
