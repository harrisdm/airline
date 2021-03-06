# == Schema Information
#
# Table name: flights
#
#  id          :integer          not null, primary key
#  name        :string
#  date        :date
#  origin      :string
#  destination :string
#  plane_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Flight < ActiveRecord::Base

  has_many :bookings
  belongs_to :plane

  validates :name, :presence => true
  validates :date, :presence => true
  validates :origin, :presence => true
  validates :destination, :presence => true

end
