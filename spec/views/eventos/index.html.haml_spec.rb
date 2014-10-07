require 'rails_helper'

RSpec.describe "eventos/index", :type => :view do
  before(:each) do
    assign(:eventos, [
      Evento.create!(
        :categoria => "Categoria",
        :empresa => nil,
        :ambiente => nil,
        :descricao => "MyText"
      ),
      Evento.create!(
        :categoria => "Categoria",
        :empresa => nil,
        :ambiente => nil,
        :descricao => "MyText"
      )
    ])
  end

  it "renders a list of eventos" do
    render
    assert_select "tr>td", :text => "Categoria".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
