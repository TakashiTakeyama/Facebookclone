Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  resources :pictures do
    collection do
      post :confirm
    end
  end
end
