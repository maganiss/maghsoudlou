json.array!(@event_reminders) do |event_reminder|
  json.extract! event_reminder, :id, :user_id, :subject, :description, :event_date, :reminder_date, :publicity
  json.url event_reminder_url(event_reminder, format: :json)
end
