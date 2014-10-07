# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :evento do
    categoria "MyString"
    data "2014-10-04"
    hora "2014-10-04 22:20:27"
    empresa nil
    ambiente nil
    descricao "MyText"
  end
end
