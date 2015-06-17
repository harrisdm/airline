# == Schema Information
#
# Table name: planes
#
#  id         :integer          not null, primary key
#  name       :string
#  aisle      :integer
#  seat       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plane < ActiveRecord::Base

  belongs_to :flight
  validates :seat, :numericality => { :greater_than => 0}
  validates :seat, :numericality => { :less_than_or_equal_to => 6}
  validates :aisle, :numericality => {:greater_than => 0}
  validates :aisle, :numericality => { :less_than_or_equal_to => 20}
end
