require 'rails_helper'

RSpec.describe "machine_types/show", type: :view do
  before(:each) do
    @machine_type = assign(:machine_type, MachineType.create!(
      :title => "Title",
      :short => "Short",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Short/)
    expect(rendered).to match(/MyText/)
  end
end
