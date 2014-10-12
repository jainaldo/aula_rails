json.array!(@loteingressos) do |loteingresso|
  json.extract! loteingresso, :id, :numero_lote, :preco, :quantidade, :evento_id
  json.url loteingresso_url(loteingresso, format: :json)
end
