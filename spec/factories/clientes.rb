# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cliente do
    nome "MyString"
    data_nascimento "2014-10-04"
    cpf "MyString"
    email "MyString"
    senha "MyString"
  end
end
