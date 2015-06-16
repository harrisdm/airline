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

end
