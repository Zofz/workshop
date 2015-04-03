require 'rails_helper'

RSpec.describe "work_types/new", type: :view do
  before(:each) do
    assign(:work_type, WorkType.new())
  end

  it "renders new work_type form" do
    render

    assert_select "form[action=?][method=?]", work_types_path, "post" do
    end
  end
end
