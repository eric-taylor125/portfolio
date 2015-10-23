json.array!(@funcao_usuarios) do |funcao_usuario|
  json.extract! funcao_usuario, :id, :id_funcao, :id_usuario
  json.url funcao_usuario_url(funcao_usuario, format: :json)
end
