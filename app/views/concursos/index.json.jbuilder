json.array!(@concursos) do |concurso|
  json.extract! concurso, :id, :titulo, :descricao, :preco_minimo, :preco_maximo, :data_inicio, :data_expiracao, :ID_Usuario, :ID_Tipo_de_Concurso
  json.url concurso_url(concurso, format: :json)
end
