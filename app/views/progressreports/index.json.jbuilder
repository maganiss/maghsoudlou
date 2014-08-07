json.array!(@progressreports) do |progressreport|
  json.extract! progressreport, :id, :user_id, :title, :abstract, :en_field, :fa_field
  json.url progressreport_url(progressreport, format: :json)
end
