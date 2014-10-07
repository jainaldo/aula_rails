require 'rails_helper'

RSpec.describe "eventos/edit", :type => :view do
  before(:each) do
    @evento = assign(:evento, Evento.create!(
      :categoria => "MyString",
      :empresa => nil,
      :ambiente => nil,
      :descricao => "MyText"
    ))
  end

  it "renders the edit evento form" do
    render

    assert_select "form[action=?][method=?]", evento_path(@evento), "post" do

      assert_select "input#evento_categoria[name=?]", "evento[categoria]"

      assert_select "input#evento_empresa_id[name=?]", "evento[empresa_id]"

      assert_select "input#evento_ambiente_id[name=?]", "evento[ambiente_id]"

      assert_select "textarea#evento_descricao[name=?]", "evento[descricao]"
    end
  end
end
