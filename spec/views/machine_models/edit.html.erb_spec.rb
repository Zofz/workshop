require 'rails_helper'

RSpec.describe "machine_models/edit", type: :view do
  before(:each) do
    @machine_model = assign(:machine_model, MachineModel.create!())
  end

  it "renders the edit machine_model form" do
    render

    assert_select "form[action=?][method=?]", machine_model_path(@machine_model), "post" do
    end
  end
end
