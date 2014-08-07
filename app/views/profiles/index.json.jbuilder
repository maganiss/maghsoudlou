json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :profile_name, :profile_height, :profile_birth_date, :profile_gender, :profile_rank
  json.url profile_url(profile, format: :json)
end
