# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  # this method realizes the authentication system, basically
  has_secure_password

  # name must be always present and with a maximum length of 50 chars
  validates :name, presence: true, length: { maximum: 50 }

  # email allowed format representation (expressed as a regex)
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+.[a-z]+\z/i

  # email must be always present, unique and with a specific format
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  # password must have a minimum length of 6 chars
  # password and password_confirmation presence is enforced by has_secure_password
  validates :password, length: { minimum: 6 }

end
