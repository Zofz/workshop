require 'rails_helper'

RSpec.describe BrandsController, type: :controller do
  let(:brand) { create(:brand) }
  let(:valid_attr) { attributes_for(:brand) }
  let(:invalid_attr) { attributes_for(:brand, title: "") }
  let(:new_attr) { attributes_for(:brand, title: "Fiske") }

  allow_user_to :manage, Brand
  before(:each) do
    brand
  end

  describe "GET #index" do
    it "assigns all brands as @brands" do
      get :index
      expect(assigns(:brands)).to eq([brand])
    end
  end

  describe "GET #show" do
    it "assigns the requested brand as @brand" do
      get :show, id: brand
      expect(assigns(:brand)).to eq(brand)
    end
  end

  describe "GET #new" do
    it "assigns a new brand as @brand" do
      get :new, {}
      expect(assigns(:brand)).to be_a_new(Brand)
    end
  end

  describe "GET #edit" do
    it "assigns the requested brand as @brand" do
      get :edit, id: brand
      expect(assigns(:brand)).to eq(brand)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Brand" do
        expect do
          post :create, brand: valid_attr
        end.to change(Brand, :count).by(1)
      end

      it "assigns a newly created brand as @brand" do
        post :create, brand: valid_attr
        expect(assigns(:brand)).to be_a(Brand)
        expect(assigns(:brand)).to be_persisted
      end

      it "redirects to the created brand" do
        post :create, brand: valid_attr
        expect(response).to redirect_to(Brand.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved brand as @brand" do
        post :create, brand: invalid_attr
        expect(assigns(:brand)).to be_a_new(Brand)
      end

      it "re-renders the 'new' template" do
        post :create, brand: invalid_attr
        expect(response).to render_template("new")
      end
    end
  end

  describe "PATCH #update" do
    context "with valid params" do
      it "updates the requested brand" do
        patch :update, id: brand.to_param, brand: new_attr
        brand.reload
        expect(brand.title).to eq(new_attr[:title])
      end

      it "assigns the requested brand as @brand" do
        patch :update, id: brand.to_param, brand: valid_attr
        expect(assigns(:brand)).to eq(brand)
      end

      it "redirects to the brand" do
        patch :update, id: brand.to_param, brand: valid_attr
        expect(response).to redirect_to(brand)
      end
    end

    context "with invalid params" do
      it "assigns the brand as @brand" do
        patch :update, id: brand.to_param, brand: invalid_attr
        expect(assigns(:brand)).to eq(brand)
      end

      it "re-renders the 'edit' template" do
        patch :update, id: brand.to_param, brand: invalid_attr
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    before(:each) do
      brand
    end
    it "destroys the requested brand" do
      expect do
        delete :destroy, id: brand
      end.to change(Brand, :count).by(-1)
    end

    it "redirects to the brands list" do
      delete :destroy, id: brand
      expect(response).to redirect_to(brands_url)
    end
  end

end
