json.array!(@industria_usuarios) do |industria_usuario|
  json.extract! industria_usuario, :id, :id_industria, :id_usuario
  json.url industria_usuario_url(industria_usuario, format: :json)
end
