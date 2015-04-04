require 'rails_helper'

RSpec.describe "machine_types/index", type: :view do
  before(:each) do
    assign(:machine_types, [
      MachineType.create!(
        :title => "Title",
        :short => "Short",
        :comment => "MyText"
      ),
      MachineType.create!(
        :title => "Title",
        :short => "Short",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of machine_types" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Short".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
