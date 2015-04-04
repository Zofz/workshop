require 'rails_helper'

RSpec.describe "brands/show", type: :view do
  before(:each) do
    @brand = assign(:brand, Brand.create!(
      :title => "Title",
      :short => "Short",
      :url => "Url",
      :reseller_url => "Reseller Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Short/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Reseller Url/)
  end
end
