json.array!(@empregos) do |emprego|
  json.extract! emprego, :id, :titulo, :descricao, :data_inicio, :data_expiracao, :ID_Usuario, :ID_Tipo_de_Emprego
  json.url emprego_url(emprego, format: :json)
end
