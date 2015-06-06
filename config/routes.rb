Rails.application.routes.draw do
  root to: "static_pages#landing"
  get "/auth/facebook/callback", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  resources :candidates, only: [:index]
end
