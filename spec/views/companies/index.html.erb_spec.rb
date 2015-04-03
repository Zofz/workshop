require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :title => "Title",
        :org_nbr => "Org Nbr",
        :comment => "MyText"
      ),
      Company.create!(
        :title => "Title",
        :org_nbr => "Org Nbr",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Org Nbr".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
