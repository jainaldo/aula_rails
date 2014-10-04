require 'rails_helper'

RSpec.describe "ambientes/index", :type => :view do
  before(:each) do
    assign(:ambientes, [
      Ambiente.create!(
        :nome => "Nome",
        :capacidade => 1,
        :endereco => "Endereco",
        :complemento => "Complemento",
        :numero => 2,
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep"
      ),
      Ambiente.create!(
        :nome => "Nome",
        :capacidade => 1,
        :endereco => "Endereco",
        :complemento => "Complemento",
        :numero => 2,
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep"
      )
    ])
  end

  it "renders a list of ambientes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
  end
end
