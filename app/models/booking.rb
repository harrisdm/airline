# == Schema Information
#
# Table name: bookings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  flight_id  :integer
#  aisle      :integer
#  seat       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Booking < ActiveRecord::Base

  belongs_to :flight
  belongs_to :user

end
