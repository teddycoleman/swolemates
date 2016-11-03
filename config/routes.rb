Rails.application.routes.draw do
  root "sessions#new"

  resources :users

  get "/",					to: "sessions#new"
  post '/login',					to: "sessions#create",				as: "login"

  get "/workouts", to: "workouts#index",    as: "workouts"

  get "/results", to: "results#index"
  post "/results", to: "results#create"
  get "/results/:id", to: "results#show", as: 'result'
  get "/challenges", to: "challenges#index", as: "challenges"
  get "/challenges/new", to: "challenges#new", as: "new_challenge" 
  post "/challenges", to: "challenges#create"

end
