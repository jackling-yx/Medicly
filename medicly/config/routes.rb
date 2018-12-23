Rails.application.routes.draw do
  resources :appointment_types
  resources :doctors
  resources :appointments
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
