# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :empresa do
    cnpj "MyString"
    nome "MyString"
    endereco "MyString"
    complemento "MyString"
    numero 1
    bairro "MyString"
    cidade "MyString"
    estado "MyString"
    cep "MyString"
  end
end
