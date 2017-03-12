json.id @user.id
json.first_name @user.first_name
json.last_name @user.last_name
json.events @user.events.each do |event|
  json.event_id event.id
  json.event_name event.name
  json.event_date event.date
  json.event_description event.description
  json.registration_deadline event.registration_deadline
  json.due_date event.due_date
  json.must_register? event.must_register?
end
