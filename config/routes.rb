Rails.application.routes.draw do
  
  namespace :admin do
    resources :courses
    resources :users

    root to: "courses#index"
  end

  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  post '/signup' => 'users#create'
  resources :courses
  root 'homes#index'
  
end
