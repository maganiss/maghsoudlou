json.array!(@theses) do |thesis|
  json.extract! thesis, :id, :user_id, :title, :fa_field, :en_field, :abstract, :professor, :attachment
  json.url thesis_url(thesis, format: :json)
end
