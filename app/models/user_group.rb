class UserGroup < ApplicationRecord
  belongs_to :user 
  belongs_to :group 

  validates :role, presence: true 

  enum role: { admin: 1, editor: 2, member: 3 }

  def customized_role
    if role == "admin"
      return "Administrator"
    elsif role == "editor" && (group.category == "sports")
      return "Coach"
    elsif role == "editor" && (group.category == "education")
      return "Teacher"
    elsif role == "editor" && (group.category == "volunteer")
      return "Committee Leader"
    elsif role == "member" && (group.category == "sports")
      return "Participant"
    elsif role == "member" && (group.category == "education")
      return "Student"
    elsif role == "member" && (group.category == "volunteer")
      return "Volunteer"        
    end
  end
end
