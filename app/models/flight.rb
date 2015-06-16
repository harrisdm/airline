class Flight < ActiveRecord::Base

  has_many :bookings
  belongs_to :plane

end
