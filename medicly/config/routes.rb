Rails.application.routes.draw do
  resources :appointment_types
  resources :doctors
  resources :appointments
  resources :users
#user management

  get '/signup', to: 'users#new', as:'signup'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show'


#session management
  get '/home' => 'sessions#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

#appointments management
  get '/general-appointment' => 'appointments#general_appointment'
  get '/vaccination', to: 'appointments#vaccination'
  get '/emergency' => 'appointments#emergency'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
