require 'rails_helper'

RSpec.describe "ambientes/edit", :type => :view do
  before(:each) do
    @ambiente = assign(:ambiente, Ambiente.create!(
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

  it "renders the edit ambiente form" do
    render

    assert_select "form[action=?][method=?]", ambiente_path(@ambiente), "post" do

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
