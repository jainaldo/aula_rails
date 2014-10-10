require 'rails_helper'

RSpec.describe "Loteingressos", :type => :request do
  describe "GET /loteingressos" do
    it "works! (now write some real specs)" do
      get loteingressos_path
      expect(response.status).to be(200)
    end
  end
end
