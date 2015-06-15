require "rails_helper"

RSpec.describe RolesController, type: :controller do
  let(:role) { create(:role) }
  let(:valid_attr) { attributes_for(:role) }
  let(:invalid_attr) { attributes_for(:role, title: nil) }
  let(:new_attr) { attributes_for(:role, title: 'Fiske') }

  allow_user_to :manage, Role

  describe "GET #index" do
    it "assigns all roles as @roles" do
      get :index
      expect(assigns(:roles)).to eq([role])
    end
  end

  describe "GET #show" do
    it "assigns the requested role as @role" do
      get :show, id: role.to_param
      expect(assigns(:role)).to eq(role)
    end
  end

  describe "GET #new" do
    it "assigns a new role as @role" do
      get :new
      expect(assigns(:role)).to be_a_new(Role)
    end
  end

  describe "GET #edit" do
    it "assigns the requested role as @role" do
      get :edit, id: role.to_param
      expect(assigns(:role)).to eq(role)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Role" do
        expect do
          post :create, role: valid_attr
        end.to change(Role, :count).by(1)
      end

      it "assigns a newly created role as @role" do
        post :create, role: valid_attr
        expect(assigns(:role)).to be_a(Role)
        expect(assigns(:role)).to be_persisted
      end

      it "redirects to the created role" do
        post :create, role: valid_attr
        expect(response).to redirect_to(Role.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved role as @role" do
        post :create, role: invalid_attr
        expect(assigns(:role)).to be_a_new(Role)
      end

      it "re-renders the 'new' template" do
        post :create, role: invalid_attr
        expect(response).to render_template("new")
      end
    end
  end

  describe "PATCH #update" do
    context "with valid params" do
      it "updates the requested role" do
        patch :update, id: role.to_param, role: new_attr
        role.reload

        expect(role.title).to eq(new_attr[:title])
      end

      it "assigns the requested role as @role" do
        patch :update, id: role.to_param, role: valid_attr
        expect(assigns(:role)).to eq(role)
      end

      it "redirects to the role" do
        patch :update, id: role.to_param, role: valid_attr
        expect(response).to redirect_to(role)
      end
    end

    context "with invalid params" do
      it "assigns the role as @role" do
        patch :update, id: role.to_param, role: invalid_attr
        expect(assigns(:role)).to eq(role)
      end

      it "re-renders the 'edit' template" do
        patch :update, id: role.to_param, role: invalid_attr
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    before(:each) do
      role
    end
    it "destroys the requested role" do
      expect do
        delete :destroy, id: role.to_param
      end.to change(Role, :count).by(-1)
    end

    it "redirects to the roles list" do
      delete :destroy, id: role.to_param
      expect(response).to redirect_to(roles_url)
    end
  end
end
