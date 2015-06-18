class AppController < ApplicationController

before_action :logged_in_user, only: [:index]

def index
  end
end

private
# Confirms a logged-in user.
def logged_in_user
  unless logged_in?
     store_location
    flash[:danger] = "Please log in."
    redirect_to login_path
  end
end