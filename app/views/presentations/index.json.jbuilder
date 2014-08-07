json.array!(@presentations) do |presentation|
  json.extract! presentation, :id, :user_id, :title, :fa_field, :en_field, :abstract, :creator, :attachment
  json.url presentation_url(presentation, format: :json)
end
