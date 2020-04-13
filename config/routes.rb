Rails.application.routes.draw do
  resources :body_parts, only: [:index, :show]
  resources :athletes do 
    resources :workouts  only: [:index, :show]
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :workouts
end
