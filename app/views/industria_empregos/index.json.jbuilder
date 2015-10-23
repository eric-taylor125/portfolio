json.array!(@industria_empregos) do |industria_emprego|
  json.extract! industria_emprego, :id, :id_industria, :id_emprego
  json.url industria_emprego_url(industria_emprego, format: :json)
end
