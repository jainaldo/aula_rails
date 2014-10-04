# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ambiente do
    nome "MyString"
    capacidade 1
    endereco "MyString"
    complemento "MyString"
    numero 1
    bairro "MyString"
    cidade "MyString"
    estado "MyString"
    cep "MyString"
  end
end
