Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'
  resources :tasks
  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'
  resources :users, only: [:edit, :update]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
