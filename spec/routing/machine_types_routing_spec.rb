require "rails_helper"

RSpec.describe MachineTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/machine_types").to route_to("machine_types#index")
    end

    it "routes to #new" do
      expect(:get => "/machine_types/new").to route_to("machine_types#new")
    end

    it "routes to #show" do
      expect(:get => "/machine_types/1").to route_to("machine_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/machine_types/1/edit").to route_to("machine_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/machine_types").to route_to("machine_types#create")
    end

    it "routes to #update" do
      expect(:put => "/machine_types/1").to route_to("machine_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/machine_types/1").to route_to("machine_types#destroy", :id => "1")
    end

  end
end
