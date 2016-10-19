Rails.application.routes.draw do
  resources :products
  resources :subcategories
  resources :categories
  resources :users
  resources :companies
  resources :industries
  resources :fees
  resources :positions
  get 'catalogues/index'
end
