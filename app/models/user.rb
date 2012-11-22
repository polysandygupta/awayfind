# == Schema Information
#
# Table name: users
#
#  id              :integer(4)      not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :first_name,:last_name,:email,:password, :password_confirmation
  has_secure_password
  validates :first_name, presence:true, length: {maximum: 50}
  validates :email, presence:true, uniqueness: true
  validates :password, presence:true,length:{minimum: 6}
  validates :password_confirmation, presence:true
  
end
