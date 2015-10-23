json.array!(@industria_concursos) do |industria_concurso|
  json.extract! industria_concurso, :id, :id_industria, :id_concurso
  json.url industria_concurso_url(industria_concurso, format: :json)
end
