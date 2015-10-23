json.array!(@provincia_concursos) do |provincia_concurso|
  json.extract! provincia_concurso, :id, :id_provincia, :id_concurso
  json.url provincia_concurso_url(provincia_concurso, format: :json)
end
