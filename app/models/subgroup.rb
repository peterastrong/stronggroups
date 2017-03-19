class Subgroup < ApplicationRecord
  belongs_to :group
  has_many :user_subgroups
  has_many :users, through: :user_subgroups
  has_many :events
  has_many :messages 

  validates :name, :description, presence: true
end
