# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "John", last_name: "Doe", email: "johndoe@email.com", password: "password", password_confirmation: "password" )
Group.create(name: "school", description: "this is a school that teaches things")
Subgroup.create(group_id: 1, name: "a class in the school", description: "beginner stuff")
UserGroup.create(user_id: 1, group_id: 1, role: 1)
UserSubgroup.create(user_id: 1, subgroup_id: 1)
Event.create(subgroup_id: 1, name: "orientation", date: "2017-15-30", description: "we tell you stuff about your class")
UserEvent.create(user_id: 1, event_id: 1)


