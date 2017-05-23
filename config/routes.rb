Rails.application.routes.draw do
  namespace :api do
    resources :facts, only: [:index, :show, :create]
  end
end
