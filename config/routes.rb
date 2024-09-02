Rails.application.routes.draw do
  get "about-us", to: "about#index", as: :about

  get "/", to: "main#index"
  #Also works: root to: "main#index"
end
