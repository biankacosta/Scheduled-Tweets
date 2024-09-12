Rails.application.routes.draw do
  get "about-us", to: "about#index", as: :about

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"

  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "/", to: "main#index"
  get "root", to: "main#index"
  #Also works: root to: "main#index"
end
