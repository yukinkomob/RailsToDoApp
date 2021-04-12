Rails.application.routes.draw do
  root :to => 'tasks#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'sessions/new'
  get 'tasks/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
end
