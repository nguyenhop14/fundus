Rails.application.routes.draw do
  devise_for :dusers
  root to: "static_pages#index"
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

end
