json.array!(@industria) do |industrium|
  json.extract! industrium, :id, :nome
  json.url industrium_url(industrium, format: :json)
end
