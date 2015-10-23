json.array!(@curriculos) do |curriculo|
  json.extract! curriculo, :id, :nome, :morada, :telefone, :email, :documento_identificacao, :N_documento_identificacao, :habilitacoes_literarias, :Experiencia_Profissional, :Linguas, :ID_Usuario, :ID_Concurso, :ID_Estado_curriculo
  json.url curriculo_url(curriculo, format: :json)
end
