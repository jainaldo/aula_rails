require 'rails_helper'

RSpec.describe "ambientes/new", :type => :view do
  before(:each) do
    assign(:ambiente, Ambiente.new(
      :nome => "MyString",
      :capacidade => 1,
      :endereco => "MyString",
      :complemento => "MyString",
      :numero => 1,
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :cep => "MyString"
    ))
  end

  it "renders new ambiente form" do
    render

    assert_select "form[action=?][method=?]", ambientes_path, "post" do

      assert_select "input#ambiente_nome[name=?]", "ambiente[nome]"

      assert_select "input#ambiente_capacidade[name=?]", "ambiente[capacidade]"

      assert_select "input#ambiente_endereco[name=?]", "ambiente[endereco]"

      assert_select "input#ambiente_complemento[name=?]", "ambiente[complemento]"

      assert_select "input#ambiente_numero[name=?]", "ambiente[numero]"

      assert_select "input#ambiente_bairro[name=?]", "ambiente[bairro]"

      assert_select "input#ambiente_cidade[name=?]", "ambiente[cidade]"

      assert_select "input#ambiente_estado[name=?]", "ambiente[estado]"

      assert_select "input#ambiente_cep[name=?]", "ambiente[cep]"
    end
  end
end
