require 'rails_helper'

RSpec.describe "machine_models/index", type: :view do
  before(:each) do
    assign(:machine_models, [
      MachineModel.create!(),
      MachineModel.create!()
    ])
  end

  it "renders a list of machine_models" do
    render
  end
end
