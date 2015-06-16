Rails.application.routes.draw do

  root :to => "flights#index"

  resources :users
  resources :planes
  resources :flights do
    resources :bookings
  end
  
  
end
