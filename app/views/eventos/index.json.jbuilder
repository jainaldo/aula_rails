json.array!(@eventos) do |evento|
  json.extract! evento, :id, :categoria, :data, :hora, :empresa_id, :ambiente_id, :descricao
  json.url evento_url(evento, format: :json)
end
