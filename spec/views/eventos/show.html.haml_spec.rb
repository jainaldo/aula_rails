require 'rails_helper'

RSpec.describe "eventos/show", :type => :view do
  before(:each) do
    @evento = assign(:evento, Evento.create!(
      :nome => "Nome",
      :categoria => "Categoria",
      :empresa => nil,
      :ambiente => nil,
      :descricao => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Categoria/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
