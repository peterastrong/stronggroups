class Event < ApplicationRecord
  belongs_to :subgroup, optional: true
  belongs_to :group, optional: true
  has_many :user_events
  has_many :users, through: :user_events

  validates :name, :description, presence: true 

end
