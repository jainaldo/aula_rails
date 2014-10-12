require 'rails_helper'

RSpec.describe "loteingressos/index", :type => :view do
  before(:each) do
    assign(:loteingressos, [
      Loteingresso.create!(
        :numero_lote => 1,
        :preco => 1.5,
        :quantidade => 2,
        :evento => nil
      ),
      Loteingresso.create!(
        :numero_lote => 1,
        :preco => 1.5,
        :quantidade => 2,
        :evento => nil
      )
    ])
  end

  it "renders a list of loteingressos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
