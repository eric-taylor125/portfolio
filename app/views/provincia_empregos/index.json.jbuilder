json.array!(@provincia_empregos) do |provincia_emprego|
  json.extract! provincia_emprego, :id, :id_provincia, :id_emprego
  json.url provincia_emprego_url(provincia_emprego, format: :json)
end
