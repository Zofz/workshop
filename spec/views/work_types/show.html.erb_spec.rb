require 'rails_helper'

RSpec.describe "work_types/show", type: :view do
  before(:each) do
    @work_type = assign(:work_type, WorkType.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
