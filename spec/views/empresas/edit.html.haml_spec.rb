require 'rails_helper'

RSpec.describe "empresas/edit", :type => :view do
  before(:each) do
    @empresa = assign(:empresa, Empresa.create!(
      :cnpj => "MyString",
      :nome => "MyString",
      :endereco => "MyString",
      :complemento => "MyString",
      :numero => 1,
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :cep => "MyString"
    ))
  end

  it "renders the edit empresa form" do
    render

    assert_select "form[action=?][method=?]", empresa_path(@empresa), "post" do

      assert_select "input#empresa_cnpj[name=?]", "empresa[cnpj]"

      assert_select "input#empresa_nome[name=?]", "empresa[nome]"

      assert_select "input#empresa_endereco[name=?]", "empresa[endereco]"

      assert_select "input#empresa_complemento[name=?]", "empresa[complemento]"

      assert_select "input#empresa_numero[name=?]", "empresa[numero]"

      assert_select "input#empresa_bairro[name=?]", "empresa[bairro]"

      assert_select "input#empresa_cidade[name=?]", "empresa[cidade]"

      assert_select "input#empresa_estado[name=?]", "empresa[estado]"

      assert_select "input#empresa_cep[name=?]", "empresa[cep]"
    end
  end
end
