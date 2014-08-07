json.array!(@techreports) do |techreport|
  json.extract! techreport, :id, :user_id, :title, :abstract, :en_field, :fa_field
  json.url techreport_url(techreport, format: :json)
end
