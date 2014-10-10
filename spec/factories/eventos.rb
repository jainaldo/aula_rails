# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :evento do
    nome "MyString"
    categoria "MyString"
    data "2014-10-09"
    hora "2014-10-09 23:35:49"
    empresa nil
    ambiente nil
    descricao "MyText"
  end
end
