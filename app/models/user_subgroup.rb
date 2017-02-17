class UserSubgroup < ApplicationRecord
  belongs_to :user 
  belongs_to :subgroup 
end
