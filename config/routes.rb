Rails.application.routes.draw do
  resources :collaborators
  resources :users

  
  post '/users' => 'users#create'
  get '/collaborator' => 'collaborators#index'
  post '/collaborator' => 'collaborators#create'
  get '/collaborators/call/:salary' => 'collaborators#call'

  get '/' => 'collaborators#index'
  get '/login' => 'sessions#new'
  delete '/logout' => 'sessions#destroy'
  post '/sessions' =>  'sessions#create'
end
