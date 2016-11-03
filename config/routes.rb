Rails.application.routes.draw do
  root "sessions#new"

  resources :users

  get "/",					to: "sessions#new"				
  post '/login',					to: "sessions#create",				as: "login"


end
