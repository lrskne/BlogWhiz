# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  category   :string(15)
#

class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :title, presence: true

end
