# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :loteingresso do
    numero_lote 1
    preco 1.5
    quantidade 1
    evento nil
  end
end
