Rails.application.routes.draw do
  root "sessions#new"

  get "/",				to: "sessions#new",				as: "login"

  get "/workouts", to: "workouts#index",    as: "workouts"
  get "/workouts/:id", to: "workouts#show",  as: "workout"

end
