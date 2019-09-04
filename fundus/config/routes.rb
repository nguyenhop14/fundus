Rails.application.routes.draw do
  resources :users
  devise_for :d_users
  root "static_pages#index"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/help", to: "static_pages#help"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
