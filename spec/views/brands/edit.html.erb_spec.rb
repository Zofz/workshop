require 'rails_helper'

RSpec.describe "brands/edit", type: :view do
  before(:each) do
    @brand = assign(:brand, Brand.create!(
      :title => "MyString",
      :short => "MyString",
      :url => "MyString",
      :reseller_url => "MyString"
    ))
  end

  it "renders the edit brand form" do
    render

    assert_select "form[action=?][method=?]", brand_path(@brand), "post" do

      assert_select "input#brand_title[name=?]", "brand[title]"

      assert_select "input#brand_short[name=?]", "brand[short]"

      assert_select "input#brand_url[name=?]", "brand[url]"

      assert_select "input#brand_reseller_url[name=?]", "brand[reseller_url]"
    end
  end
end
