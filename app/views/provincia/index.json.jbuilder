json.array!(@provincia) do |provincium|
  json.extract! provincium, :id, :nome
  json.url provincium_url(provincium, format: :json)
end
