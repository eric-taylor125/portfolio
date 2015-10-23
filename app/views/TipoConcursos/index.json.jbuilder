json.array!(@tipo_concursos) do |tipo_de_concurso|
  json.extract! tipo_de_concurso, :id, :nome
  json.url tipo_de_concurso_url(tipo_de_concurso, format: :json)
end
