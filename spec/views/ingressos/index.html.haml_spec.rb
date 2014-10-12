require 'rails_helper'

RSpec.describe "ingressos/index", :type => :view do
  before(:each) do
    assign(:ingressos, [
      Ingresso.create!(
        :cadeira_numerada => 1,
        :area => "Area",
        :cliente => nil,
        :loteingresso => nil
      ),
      Ingresso.create!(
        :cadeira_numerada => 1,
        :area => "Area",
        :cliente => nil,
        :loteingresso => nil
      )
    ])
  end

  it "renders a list of ingressos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
