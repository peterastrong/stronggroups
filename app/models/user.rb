class User < ApplicationRecord
  has_secure_password
  
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_subgroups
  has_many :subgroups, through: :user_subgroups
  has_many :user_events
  has_many :events, through: :user_events
  has_many :messages
  
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true 

  def admin?(group_id)
    user_group = user_groups.find_by(group_id: group_id)
    user_group ? user_group.admin? : false
  end

  def editor?(group_id)
    user_group = user_groups.find_by(group_id: group_id)
    user_group ? user_group.editor? : false
  end

  def member?(group_id)
    user_group = user_groups.find_by(group_id: group_id)
    user_group ? user_group.member? : false
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def role(user, group_id)
    "#{user.user_groups.find_by(group_id: group_id).role.capitalize}"
  end 
end
