# == Schema Information
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :first_name,:last_name,:email
  validates :first_name, presence:true, length: {maximum: 50}
  validates :email, presence:true, uniqueness: true
  
end
