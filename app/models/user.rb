class User < ActiveRecord::Base
  has_secure_password

  #lbelater - also check for email valid format
  validates :email, uniqueness: true
  validates :email, format: { with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, message: "So sorry, your email format is invalid" }


  #change whatever user enters into lowercase, and strip spaces
  def email=(value)
    value = value.strip.downcase
    write_attribute :email, value
  end

end
