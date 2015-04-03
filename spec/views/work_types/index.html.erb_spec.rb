require 'rails_helper'

RSpec.describe "work_types/index", type: :view do
  before(:each) do
    assign(:work_types, [
      WorkType.create!(),
      WorkType.create!()
    ])
  end

  it "renders a list of work_types" do
    render
  end
end
