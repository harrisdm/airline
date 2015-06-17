# == Route Map
#
#              Prefix Verb   URI Pattern                                     Controller#Action
#                 app GET    /app(.:format)                                  app#index
#                root GET    /                                               session#new
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
#          edit_users GET    /users/edit(.:format)                           users#edit
#               users GET    /users(.:format)                                users#index
#                     POST   /users(.:format)                                users#create
#            new_user GET    /users/new(.:format)                            users#new
#                user GET    /users/:id(.:format)                            users#show
#                     PATCH  /users/:id(.:format)                            users#update
#                     PUT    /users/:id(.:format)                            users#update
#                     DELETE /users/:id(.:format)                            users#destroy
#              signup GET    /signup(.:format)                               users#new
#               login GET    /login(.:format)                                session#new
#                     POST   /login(.:format)                                session#create
#              logout DELETE /logout(.:format)                               session#destroy
#

Rails.application.routes.draw do

  get '/app' => 'app#index'

   # root :to => 'app#index'
   root :to => 'session#new'

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
  get '/logout' => 'session#destroy' #delete a session (log out) 
              
  
end
