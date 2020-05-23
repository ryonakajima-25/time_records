Rails.application.routes.draw do
  devise_for :users
  root "users#show"
  resources :users, only: [:show]
  resources :job_time, only: [:create]
end
