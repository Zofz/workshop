require "rails_helper"

RSpec.describe MachineModelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/machine_models").to route_to("machine_models#index")
    end

    it "routes to #new" do
      expect(:get => "/machine_models/new").to route_to("machine_models#new")
    end

    it "routes to #show" do
      expect(:get => "/machine_models/1").to route_to("machine_models#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/machine_models/1/edit").to route_to("machine_models#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/machine_models").to route_to("machine_models#create")
    end

    it "routes to #update" do
      expect(:put => "/machine_models/1").to route_to("machine_models#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/machine_models/1").to route_to("machine_models#destroy", :id => "1")
    end

  end
end
