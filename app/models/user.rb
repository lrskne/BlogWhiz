# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_secure_password


  validates :email, uniqueness: true, format: { with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, message: "So sorry, your email format is invalid" }


  #change whatever user enters into lowercase, and strip spaces
  def email=(value)
    value = value.strip.downcase
    write_attribute :email, value
  end

end
