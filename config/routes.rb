Rails.application.routes.draw do
  root "sessions#new"

  get "/",				to: "sessions#new",				as: "login"

  get "/workouts", to: "workouts#index",    as: "workouts"

  get "/results", to: "results#index"

  post "/results", to: "results#create"

  get "/results/:id", to: "results#show"
end
