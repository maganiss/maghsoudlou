json.array!(@confarticles) do |confarticle|
  json.extract! confarticle, :id, :user_id, :title, :abstract, :en_field, :fa_field, :conf_name, :conf_date, :conf_location
  json.url confarticle_url(confarticle, format: :json)
end
