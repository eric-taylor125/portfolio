json.array!(@tipo_usuarios) do |tipo_de_usuario|
  json.extract! tipo_de_usuario, :id, :nome
  json.url tipo_de_usuario_url(tipo_de_usuario, format: :json)
end
