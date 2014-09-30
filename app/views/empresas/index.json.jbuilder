json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :cnpj, :nome, :endereco, :complemento, :numero, :bairro, :cidade, :estado, :cep
  json.url empresa_url(empresa, format: :json)
end
