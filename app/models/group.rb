class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :subgroups
  has_many :events
  
end
