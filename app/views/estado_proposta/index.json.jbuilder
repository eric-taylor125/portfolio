json.array!(@estado_proposta) do |estado_propostum|
  json.extract! estado_propostum, :id, :nome
  json.url estado_propostum_url(estado_propostum, format: :json)
end
