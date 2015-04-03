require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :title => "MyString",
      :org_nbr => "MyString",
      :comment => "MyText"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_title[name=?]", "company[title]"

      assert_select "input#company_org_nbr[name=?]", "company[org_nbr]"

      assert_select "textarea#company_comment[name=?]", "company[comment]"
    end
  end
end
