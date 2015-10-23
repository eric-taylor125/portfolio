json.array!(@estado_curriculos) do |estado_do_curriculo|
  json.extract! estado_do_curriculo, :id, :nome
  json.url estado_do_curriculo_url(estado_do_curriculo, format: :json)
end
