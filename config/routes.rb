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
  get  '/courses' => 'courses#index'
  root 'homes#index'
  
end
