json.array!(@journalarticles) do |journalarticle|
  json.extract! journalarticle, :id, :user_id, :title, :abstract, :en_field, :fa_field, :journal_name, :journal_publishyear, :journal_volume, :journal_pages
  json.url journalarticle_url(journalarticle, format: :json)
end
