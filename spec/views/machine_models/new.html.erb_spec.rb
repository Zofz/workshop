require 'rails_helper'

RSpec.describe "machine_models/new", type: :view do
  before(:each) do
    assign(:machine_model, MachineModel.new())
  end

  it "renders new machine_model form" do
    render

    assert_select "form[action=?][method=?]", machine_models_path, "post" do
    end
  end
end
