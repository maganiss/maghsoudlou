json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :decision_id, :target_id, :exercise_id, :intake_id, :emotion_id, :comment_content
  json.url comment_url(comment, format: :json)
end
