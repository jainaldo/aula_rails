json.array!(@loteingressos) do |loteingresso|
  json.extract! loteingresso, :id, :preco, :quantidade, :evento_id
  json.url loteingresso_url(loteingresso, format: :json)
end
