class UserGroup < ApplicationRecord
  belongs_to :user 
  belongs_to :group 

  validates :role, presence: true 
end
