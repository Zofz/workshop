require "rails_helper"

RSpec.describe ProductsController, type: :controller do
  let(:product) { create(:product) }
  let(:m_type) { create(:machine_type) }
  let(:brand) { create(:brand) }
  let(:valid_attr) do
    attributes_for(:product, machine_type_id: m_type.id, brand_id: brand.id)
  end
  let(:invalid_attr) { attributes_for(:product, machine_type_id: nil) }
  let(:new_attributes) { attributes_for(:product, order_nbr: "Fiske") }

  allow_user_to :manage, Product

  describe "GET #index" do
    it "assigns all products as @products" do
      get :index

      expect(assigns(:products)).to eq([product])
    end
  end

  describe "GET #show" do
    it "assigns the requested product as @product" do
      get :show, id: product.to_param

      expect(assigns(:product)).to eq(product)
    end
  end

  describe "GET #new" do
    it "assigns a new product as @product" do
      get :new
      expect(assigns(:product)).to be_a_new(Product)
    end
  end

  describe "GET #edit" do
    it "assigns the requested product as @product" do
      get :edit, id: product.to_param
      expect(assigns(:product)).to eq(product)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Product" do
        expect do
          post :create, product: valid_attr
        end.to change(Product, :count).by(1)
      end

      it "assigns a newly created product as @product" do
        post :create, product: valid_attr
        expect(assigns(:product)).to be_a(Product)
        expect(assigns(:product)).to be_persisted
      end

      it "redirects to the created product" do
        post :create, product: valid_attr
        expect(response).to redirect_to(Product.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved product as @product" do
        post :create, product: invalid_attr
        expect(assigns(:product)).to be_a_new(Product)
      end

      it "re-renders the 'new' template" do
        post :create, product: invalid_attr
        expect(response).to render_template("new")
      end
    end
  end

  describe "PATCH #update" do
    context "with valid params" do
      it "updates the requested product" do
        put :update, id: product.to_param, product: new_attributes
        product.reload

        expect(product.order_nbr).to eq("Fiske")
      end

      it "assigns the requested product as @product" do
        patch :update, id: product.to_param, product: valid_attr
        expect(assigns(:product)).to eq(product)
      end

      it "redirects to the product" do
        patch :update, id: product.to_param, product: valid_attr
        expect(response).to redirect_to(product)
      end
    end

    context "with invalid params" do
      it "assigns the product as @product" do
        patch :update, id: product.to_param, product: invalid_attr
        expect(assigns(:product)).to eq(product)
      end

      it "re-renders the 'edit' template" do
        patch :update, id: product.to_param, product: invalid_attr
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    before(:each) do
      product
    end

    it "destroys the requested product" do
      expect do
        delete :destroy, id: product
      end.to change(Product, :count).by(-1)
    end

    it "redirects to the products list" do
      delete :destroy, id: product.to_param

      expect(response).to redirect_to(products_url)
    end
  end
end
