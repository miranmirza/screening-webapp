Rails.application.routes.draw do
  root to: "candidates#index"
  get "/login", to: "static_pages#landing"
  get "auth/:provider/callback", to: "sessions#create"
  get 'auth/failure', to: redirect('/')
  get "/logout", to: "sessions#destroy"
  get "/thanks", to: "static_pages#thanks"

  resources :users do
    member do
      put "revoke_access"
      put "grant_access"
    end
  end

  resources :candidates
  resources :notes, except:[:destroy]
end
