require 'rails_helper'

RSpec.describe "ingressos/edit", :type => :view do
  before(:each) do
    @ingresso = assign(:ingresso, Ingresso.create!(
      :cadeira_numerada => 1,
      :area => "MyString",
      :cliente => nil,
      :loteingresso => nil
    ))
  end

  it "renders the edit ingresso form" do
    render

    assert_select "form[action=?][method=?]", ingresso_path(@ingresso), "post" do

      assert_select "input#ingresso_cadeira_numerada[name=?]", "ingresso[cadeira_numerada]"

      assert_select "input#ingresso_area[name=?]", "ingresso[area]"

      assert_select "input#ingresso_cliente_id[name=?]", "ingresso[cliente_id]"

      assert_select "input#ingresso_loteingresso_id[name=?]", "ingresso[loteingresso_id]"
    end
  end
end
