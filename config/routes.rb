Rails.application.routes.draw do
  root to: "candidates#index"
  get "/login", to: "static_pages#landing"
  get "/auth/facebook/callback", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get "/thanks", to: "static_pages#thanks"
end
