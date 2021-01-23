Rails.application.routes.draw do
  resources :destinations
  resources :travelers, only: [:new]
  resources :goals
end
