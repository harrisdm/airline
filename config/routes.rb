# == Route Map
#
#              Prefix Verb   URI Pattern                                     Controller#Action
#                root GET    /                                               flights#index
#               users GET    /users(.:format)                                users#index
#                     POST   /users(.:format)                                users#create
#            new_user GET    /users/new(.:format)                            users#new
#           edit_user GET    /users/:id/edit(.:format)                       users#edit
#                user GET    /users/:id(.:format)                            users#show
#                     PATCH  /users/:id(.:format)                            users#update
#                     PUT    /users/:id(.:format)                            users#update
  
#              planes GET    /planes(.:format)                               planes#index
#                     POST   /planes(.:format)                               planes#create
#           new_plane GET    /planes/new(.:format)                           planes#new
#          edit_plane GET    /planes/:id/edit(.:format)                      planes#edit
#               plane GET    /planes/:id(.:format)                           planes#show
#                     PATCH  /planes/:id(.:format)                           planes#update
#                     PUT    /planes/:id(.:format)                           planes#update
#                     DELETE /planes/:id(.:format)                           planes#destroy
#     flight_bookings GET    /flights/:flight_id/bookings(.:format)          bookings#index
#                     POST   /flights/:flight_id/bookings(.:format)          bookings#create
#  new_flight_booking GET    /flights/:flight_id/bookings/new(.:format)      bookings#new
# edit_flight_booking GET    /flights/:flight_id/bookings/:id/edit(.:format) bookings#edit
#      flight_booking GET    /flights/:flight_id/bookings/:id(.:format)      bookings#show
#                     PATCH  /flights/:flight_id/bookings/:id(.:format)      bookings#update
#                     PUT    /flights/:flight_id/bookings/:id(.:format)      bookings#update
#                     DELETE /flights/:flight_id/bookings/:id(.:format)      bookings#destroy
#             flights GET    /flights(.:format)                              flights#index
#                     POST   /flights(.:format)                              flights#create
#          new_flight GET    /flights/new(.:format)                          flights#new
#         edit_flight GET    /flights/:id/edit(.:format)                     flights#edit
#              flight GET    /flights/:id(.:format)                          flights#show
#                     PATCH  /flights/:id(.:format)                          flights#update
#                     PUT    /flights/:id(.:format)                          flights#update
#                     DELETE /flights/:id(.:format)                          flights#destroy
#

Rails.application.routes.draw do

  resources :planes
  resources :flights do
    resources :bookings
  end
  
  root :to => "flights#index"

   resources :users , :except => [:edit] do 
      collection do 
        get '/edit' => 'users#edit'
      end
    end 


  # get '/signup' => 'users#new', :as => 'user'
  # # get '/users/new' => 'users#new'
  # post '/users' => 'users#create'   

  get '/signup' => 'users#new'
  get '/login' => 'session#new'  #page for a new session (login)
  post '/login' => 'session#create' #create a new session (login)
  delete '/logout' => 'session#destroy' #delete a session (log out)                    
  
end
