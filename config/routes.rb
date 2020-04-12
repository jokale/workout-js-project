Rails.application.routes.draw do
  resources :body_parts
  resources :athletes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :workouts
end
