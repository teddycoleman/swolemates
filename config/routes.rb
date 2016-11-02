Rails.application.routes.draw do
  root "sessions#new"

  get "/",				to: "sessions#new",				as: "login"


  
end
