json.array!(@targets) do |target|
  json.extract! target, :id, :user_id, :target_type, :target_amount, :target_start_date, :target_timetoreach, :target_is_achieved
  json.url target_url(target, format: :json)
end
