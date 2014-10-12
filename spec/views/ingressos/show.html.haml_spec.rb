require 'rails_helper'

RSpec.describe "ingressos/show", :type => :view do
  before(:each) do
    @ingresso = assign(:ingresso, Ingresso.create!(
      :cadeira_numerada => 1,
      :area => "Area",
      :cliente => nil,
      :loteingresso => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
