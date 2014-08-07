json.array!(@likes) do |like|
  json.extract! like, :id, :user_id, :decision_id, :target_id, :exercise_id, :intake_id, :emotion_id
  json.url like_url(like, format: :json)
end
