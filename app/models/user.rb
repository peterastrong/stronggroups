class User < ApplicationRecord
  has_secure_password
  
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_subgroups
  has_many :subgroups, through: :user_subgroups
  has_many :user_events
  has_many :events, through: :user_events
  
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true 


  
end
