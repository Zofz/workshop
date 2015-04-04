require 'rails_helper'

RSpec.describe "machine_types/new", type: :view do
  before(:each) do
    assign(:machine_type, MachineType.new(
      :title => "MyString",
      :short => "MyString",
      :comment => "MyText"
    ))
  end

  it "renders new machine_type form" do
    render

    assert_select "form[action=?][method=?]", machine_types_path, "post" do

      assert_select "input#machine_type_title[name=?]", "machine_type[title]"

      assert_select "input#machine_type_short[name=?]", "machine_type[short]"

      assert_select "textarea#machine_type_comment[name=?]", "machine_type[comment]"
    end
  end
end
