# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ingresso do
    cadeira_numerada 1
    area "MyString"
    cliente nil
    loteingresso nil
  end
end
