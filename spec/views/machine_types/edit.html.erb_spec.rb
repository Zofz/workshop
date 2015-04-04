require 'rails_helper'

RSpec.describe "machine_types/edit", type: :view do
  before(:each) do
    @machine_type = assign(:machine_type, MachineType.create!(
      :title => "MyString",
      :short => "MyString",
      :comment => "MyText"
    ))
  end

  it "renders the edit machine_type form" do
    render

    assert_select "form[action=?][method=?]", machine_type_path(@machine_type), "post" do

      assert_select "input#machine_type_title[name=?]", "machine_type[title]"

      assert_select "input#machine_type_short[name=?]", "machine_type[short]"

      assert_select "textarea#machine_type_comment[name=?]", "machine_type[comment]"
    end
  end
end
