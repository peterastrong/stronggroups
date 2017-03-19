json.array! @messages.each do |message|
  json.id message.id
  json.name message.user.id
  json.body message.body
  json.subgroup_id message.subgroup_id
  json.created_at message.created_at
end   