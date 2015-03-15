Rails.application.routes.draw do
  root "home#index"

  resources :days, only: %i(index)
end
