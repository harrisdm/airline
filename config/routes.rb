Rails.application.routes.draw do

  get 'app/index'

  root :to => 'app#index'

  resources :planes
  resources :flights do
    resources :bookings
  end

  resources :users , :except => [:edit] do 
      collection do 
        get '/edit' => 'users#edit'
      end
    end 

  get '/signup' => 'users#new'
  get '/login' => 'session#new'  #page for a new session (login)
  post '/login' => 'session#create' #create a new session (login)
  delete '/logout' => 'session#destroy' #delete a session (log out) 
              
  
end
