require 'rails_helper'

RSpec.describe "loteingressos/edit", :type => :view do
  before(:each) do
    @loteingresso = assign(:loteingresso, Loteingresso.create!(
      :preco => 1.5,
      :quantidade => 1,
      :evento => nil
    ))
  end

  it "renders the edit loteingresso form" do
    render

    assert_select "form[action=?][method=?]", loteingresso_path(@loteingresso), "post" do

      assert_select "input#loteingresso_preco[name=?]", "loteingresso[preco]"

      assert_select "input#loteingresso_quantidade[name=?]", "loteingresso[quantidade]"

      assert_select "input#loteingresso_evento_id[name=?]", "loteingresso[evento_id]"
    end
  end
end
