# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
<<<<<<< HEAD
=======
#  admin           :boolean          default(FALSE)
>>>>>>> airline
#

class User < ActiveRecord::Base

  has_secure_password

 has_many :bookings

  before_save { self.email = email.downcase }
 validates :name, :presence => true
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, :presence => true
 validates :email, :uniqueness => true ,length: { maximum: 255 } , format: { with: VALID_EMAIL_REGEX }
  
end
