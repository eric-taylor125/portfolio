json.array!(@curriculos_empregos) do |curriculos_emprego|
  json.extract! curriculos_emprego, :id, :id_emprego, :id_curriculo
  json.url curriculos_emprego_url(curriculos_emprego, format: :json)
end
