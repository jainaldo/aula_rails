require 'rails_helper'

RSpec.describe "empresas/show", :type => :view do
  before(:each) do
    @empresa = assign(:empresa, Empresa.create!(
      :cnpj => "Cnpj",
      :nome => "Nome",
      :endereco => "Endereco",
      :complemento => "Complemento",
      :numero => 1,
      :bairro => "Bairro",
      :cidade => "Cidade",
      :estado => "Estado",
      :cep => "Cep"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Complemento/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(/Cep/)
  end
end
