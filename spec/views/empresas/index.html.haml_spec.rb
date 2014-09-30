require 'rails_helper'

RSpec.describe "empresas/index", :type => :view do
  before(:each) do
    assign(:empresas, [
      Empresa.create!(
        :cnpj => "Cnpj",
        :nome => "Nome",
        :endereco => "Endereco",
        :complemento => "Complemento",
        :numero => 1,
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep"
      ),
      Empresa.create!(
        :cnpj => "Cnpj",
        :nome => "Nome",
        :endereco => "Endereco",
        :complemento => "Complemento",
        :numero => 1,
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :cep => "Cep"
      )
    ])
  end

  it "renders a list of empresas" do
    render
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
  end
end
