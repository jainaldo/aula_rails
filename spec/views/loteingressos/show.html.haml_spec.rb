require 'rails_helper'

RSpec.describe "loteingressos/show", :type => :view do
  before(:each) do
    @loteingresso = assign(:loteingresso, Loteingresso.create!(
      :numero_lote => 1,
      :preco => 1.5,
      :quantidade => 2,
      :evento => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
