json.array!(@funcao_empregos) do |funcao_emprego|
  json.extract! funcao_emprego, :id, :id_funcao, :id_emprego
  json.url funcao_emprego_url(funcao_emprego, format: :json)
end
