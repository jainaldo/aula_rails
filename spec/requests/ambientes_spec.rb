require 'rails_helper'

RSpec.describe "Ambientes", :type => :request do
  describe "GET /ambientes" do
    it "works! (now write some real specs)" do
      get ambientes_path
      expect(response.status).to be(200)
    end
  end
end
