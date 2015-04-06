Rails.application.routes.draw do
  root "home#index"

  resources :days, only: %i(index)
  resources :tasks, only: %i(create)
end
