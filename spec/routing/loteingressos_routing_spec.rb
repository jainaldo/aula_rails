require "rails_helper"

RSpec.describe LoteingressosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/loteingressos").to route_to("loteingressos#index")
    end

    it "routes to #new" do
      expect(:get => "/loteingressos/new").to route_to("loteingressos#new")
    end

    it "routes to #show" do
      expect(:get => "/loteingressos/1").to route_to("loteingressos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/loteingressos/1/edit").to route_to("loteingressos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/loteingressos").to route_to("loteingressos#create")
    end

    it "routes to #update" do
      expect(:put => "/loteingressos/1").to route_to("loteingressos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/loteingressos/1").to route_to("loteingressos#destroy", :id => "1")
    end

  end
end
