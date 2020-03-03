Rails.application.routes.draw do
  resources :organisations
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post 'signup', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :trackers, only: :show
    end
  end
end
