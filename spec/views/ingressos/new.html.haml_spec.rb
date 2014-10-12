require 'rails_helper'

RSpec.describe "ingressos/new", :type => :view do
  before(:each) do
    assign(:ingresso, Ingresso.new(
      :cadeira_numerada => 1,
      :area => "MyString",
      :cliente => nil,
      :loteingresso => nil
    ))
  end

  it "renders new ingresso form" do
    render

    assert_select "form[action=?][method=?]", ingressos_path, "post" do

      assert_select "input#ingresso_cadeira_numerada[name=?]", "ingresso[cadeira_numerada]"

      assert_select "input#ingresso_area[name=?]", "ingresso[area]"

      assert_select "input#ingresso_cliente_id[name=?]", "ingresso[cliente_id]"

      assert_select "input#ingresso_loteingresso_id[name=?]", "ingresso[loteingresso_id]"
    end
  end
end
