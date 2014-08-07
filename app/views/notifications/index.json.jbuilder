json.array!(@notifications) do |notification|
  json.extract! notification, :id, :notifiable_type, :notifiable_id, :user_id
  json.url notification_url(notification, format: :json)
end
