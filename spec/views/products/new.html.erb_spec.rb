require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :machine_model => "",
      :product_nbr => "MyString",
      :order_nbr => ""
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_machine_model[name=?]", "product[machine_model]"

      assert_select "input#product_product_nbr[name=?]", "product[product_nbr]"

      assert_select "input#product_order_nbr[name=?]", "product[order_nbr]"
    end
  end
end
