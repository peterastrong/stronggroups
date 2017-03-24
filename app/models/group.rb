class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :subgroups
  has_many :events

  validates :name, :description, :category, presence: true


  enum category: { education: 1, sports: 2, volunteer: 3 }
  
end
