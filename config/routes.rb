Rails.application.routes.draw do
  root "videos#index"
  resources :videos, only: [:index, :new, :create] #because our user story only called for index
end
