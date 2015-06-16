class User < ActiveRecord::Base

  has_secure_password

 has_many :bookings

 validates :name, :presence => true
 validates :email, :presence => true
 validates :email, :uniqueness => true
  
end
