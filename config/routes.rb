Rails.application.routes.draw do
  get "about-us", to: "about#index", as: :about

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"

  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  get "/", to: "main#index"
  get "root", to: "main#index"
  #Also works: root to: "main#index"
end
