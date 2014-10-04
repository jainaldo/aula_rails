json.array!(@ambientes) do |ambiente|
  json.extract! ambiente, :id, :nome, :capacidade, :endereco, :complemento, :numero, :bairro, :cidade, :estado, :cep
  json.url ambiente_url(ambiente, format: :json)
end
