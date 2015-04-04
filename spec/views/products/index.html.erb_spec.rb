require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :machine_model => "",
        :product_nbr => "Product Nbr",
        :order_nbr => ""
      ),
      Product.create!(
        :machine_model => "",
        :product_nbr => "Product Nbr",
        :order_nbr => ""
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Product Nbr".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
