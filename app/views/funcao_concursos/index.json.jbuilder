json.array!(@funcao_concursos) do |funcao_concurso|
  json.extract! funcao_concurso, :id, :id_funcao, :id_concurso
  json.url funcao_concurso_url(funcao_concurso, format: :json)
end
