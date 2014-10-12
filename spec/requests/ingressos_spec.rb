require 'rails_helper'

RSpec.describe "Ingressos", :type => :request do
  describe "GET /ingressos" do
    it "works! (now write some real specs)" do
      get ingressos_path
      expect(response.status).to be(200)
    end
  end
end
