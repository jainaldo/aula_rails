require "rails_helper"

RSpec.describe AmbientesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ambientes").to route_to("ambientes#index")
    end

    it "routes to #new" do
      expect(:get => "/ambientes/new").to route_to("ambientes#new")
    end

    it "routes to #show" do
      expect(:get => "/ambientes/1").to route_to("ambientes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ambientes/1/edit").to route_to("ambientes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ambientes").to route_to("ambientes#create")
    end

    it "routes to #update" do
      expect(:put => "/ambientes/1").to route_to("ambientes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ambientes/1").to route_to("ambientes#destroy", :id => "1")
    end

  end
end
