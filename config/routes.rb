Rails.application.routes.draw do
  resources :videos, only: [:index] #because our user story only called for index
end
