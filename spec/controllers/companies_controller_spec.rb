require "rails_helper"

RSpec.describe CompaniesController, type: :controller do
  let(:company) { create(:company) }
  let(:valid_attr) { attributes_for(:company) }
  let(:invalid_attr) { attributes_for(:company, title: nil) }
  let(:new_attr) { attributes_for(:company, title: "Fiske") }

  allow_user_to :manage, Company

  describe "GET #index" do
    it "assigns all companies as @companies" do
      get :index
      expect(assigns(:companies)).to eq([company])
    end
  end

  describe "GET #show" do
    it "assigns the requested company as @company" do
      get :show, id: company.to_param
      expect(assigns(:company)).to eq(company)
    end
  end

  describe "GET #new" do
    it "assigns a new company as @company" do
      get :new
      expect(assigns(:company)).to be_a_new(Company)
    end
  end

  describe "GET #edit" do
    it "assigns the requested company as @company" do
      get :edit, id: company.to_param
      expect(assigns(:company)).to eq(company)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Company" do
        expect do
          post :create, company: valid_attr
        end.to change(Company, :count).by(1)
      end

      it "assigns a newly created company as @company" do
        post :create, company: valid_attr
        expect(assigns(:company)).to be_a(Company)
        expect(assigns(:company)).to be_persisted
      end

      it "redirects to the created company" do
        post :create, company: valid_attr
        expect(response).to redirect_to(Company.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved company as @company" do
        post :create, company: invalid_attr
        expect(assigns(:company)).to be_a_new(Company)
      end

      it "re-renders the 'new' template" do
        post :create, company: invalid_attr
        expect(response).to render_template("new")
      end
    end
  end

  describe "PATCH #update" do
    context "with valid params" do
      it "updates the requested company" do
        patch :update, id: company.to_param, company: new_attr
        company.reload

        expect(company.title).to eq(new_attr[:title])
      end

      it "assigns the requested company as @company" do
        patch :update, id: company.to_param, company: valid_attr
        expect(assigns(:company)).to eq(company)
      end

      it "redirects to the company" do
        patch :update, id: company.to_param, company: valid_attr
        expect(response).to redirect_to(company)
      end
    end

    context "with invalid params" do
      it "assigns the company as @company" do
        patch :update, id: company.to_param, company: invalid_attr
        expect(assigns(:company)).to eq(company)
      end

      it "re-renders the 'edit' template" do
        patch :update, id: company.to_param, company: invalid_attr
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    before(:each) do
      company
    end
    it "destroys the requested company" do
      expect do
        delete :destroy, id: company.to_param
      end.to change(Company, :count).by(-1)
    end

    it "redirects to the companies list" do
      delete :destroy, id: company.to_param
      expect(response).to redirect_to(companies_url)
    end
  end
end
