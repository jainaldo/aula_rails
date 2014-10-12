require "rails_helper"

RSpec.describe IngressosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ingressos").to route_to("ingressos#index")
    end

    it "routes to #new" do
      expect(:get => "/ingressos/new").to route_to("ingressos#new")
    end

    it "routes to #show" do
      expect(:get => "/ingressos/1").to route_to("ingressos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ingressos/1/edit").to route_to("ingressos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ingressos").to route_to("ingressos#create")
    end

    it "routes to #update" do
      expect(:put => "/ingressos/1").to route_to("ingressos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ingressos/1").to route_to("ingressos#destroy", :id => "1")
    end

  end
end
