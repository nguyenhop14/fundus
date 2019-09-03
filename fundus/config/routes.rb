Rails.application.routes.draw do
  root "static_pages#index"
  get "/about", to: "static_pages#about"
  get "/conact", to: "static_pages#contact"
  get "/help", to: "static_pages#help"
end
