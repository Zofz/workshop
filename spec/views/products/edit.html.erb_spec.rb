require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :machine_model => "",
      :product_nbr => "MyString",
      :order_nbr => ""
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_machine_model[name=?]", "product[machine_model]"

      assert_select "input#product_product_nbr[name=?]", "product[product_nbr]"

      assert_select "input#product_order_nbr[name=?]", "product[order_nbr]"
    end
  end
end
