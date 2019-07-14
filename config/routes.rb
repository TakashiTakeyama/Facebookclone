Rails.application.routes.draw do
  resources :sessions, only: [:new,:create,:destroy]
  resources :users
  resources :pictures do
    collection do
      post :confirm
    end
  end
  root to: 'sessions#new'
  get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end
