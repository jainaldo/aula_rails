json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :data_nascimento, :cpf, :email, :senha
  json.url cliente_url(cliente, format: :json)
end
