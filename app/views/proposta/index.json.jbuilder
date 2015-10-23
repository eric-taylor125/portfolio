json.array!(@proposta) do |propostum|
  json.extract! propostum, :id, :descricao, :preco, :ID_Usuario, :ID_Concurso, :ID_Estado_Proposta
  json.url propostum_url(propostum, format: :json)
end
