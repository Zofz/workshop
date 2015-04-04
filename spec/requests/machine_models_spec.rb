require 'rails_helper'

RSpec.describe "MachineModels", type: :request do
  describe "GET /machine_models" do
    it "works! (now write some real specs)" do
      get machine_models_path
      expect(response).to have_http_status(200)
    end
  end
end
