require 'rails_helper'

RSpec.describe "machine_models/show", type: :view do
  before(:each) do
    @machine_model = assign(:machine_model, MachineModel.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
