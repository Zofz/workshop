require 'rails_helper'

RSpec.describe "brands/index", type: :view do
  before(:each) do
    assign(:brands, [
      Brand.create!(
        :title => "Title",
        :short => "Short",
        :url => "Url",
        :reseller_url => "Reseller Url"
      ),
      Brand.create!(
        :title => "Title",
        :short => "Short",
        :url => "Url",
        :reseller_url => "Reseller Url"
      )
    ])
  end

  it "renders a list of brands" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Short".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Reseller Url".to_s, :count => 2
  end
end
