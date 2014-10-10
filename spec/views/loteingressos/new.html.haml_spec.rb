require 'rails_helper'

RSpec.describe "loteingressos/new", :type => :view do
  before(:each) do
    assign(:loteingresso, Loteingresso.new(
      :preco => 1.5,
      :quantidade => 1,
      :evento => nil
    ))
  end

  it "renders new loteingresso form" do
    render

    assert_select "form[action=?][method=?]", loteingressos_path, "post" do

      assert_select "input#loteingresso_preco[name=?]", "loteingresso[preco]"

      assert_select "input#loteingresso_quantidade[name=?]", "loteingresso[quantidade]"

      assert_select "input#loteingresso_evento_id[name=?]", "loteingresso[evento_id]"
    end
  end
end
