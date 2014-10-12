json.array!(@ingressos) do |ingresso|
  json.extract! ingresso, :id, :cadeira_numerada, :area, :cliente_id, :loteingresso_id
  json.url ingresso_url(ingresso, format: :json)
end
