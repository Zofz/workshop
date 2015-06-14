require "rails_helper"

RSpec.describe MachineTypesController, type: :controller do

  let(:machine_type) { create(:machine_type) }
  let(:valid_attr) { attributes_for(:machine_type) }
  let(:invalid_attr) { attributes_for(:machine_type, title: "") }
  let(:new_attr) { attributes_for(:machine_type, title: "Fiske") }

  allow_user_to :manage, MachineType

  describe "GET #index" do
    it "assigns all machine_types as @machine_types" do
      get :index
      expect(assigns(:machine_types)).to eq([machine_type])
    end
  end

  describe "GET #show" do
    it "assigns the requested machine_type as @machine_type" do
      get :show, id: machine_type.to_param
      expect(assigns(:machine_type)).to eq(machine_type)
    end
  end

  describe "GET #new" do
    it "assigns a new machine_type as @machine_type" do
      get :new
      expect(assigns(:machine_type)).to be_a_new(MachineType)
    end
  end

  describe "GET #edit" do
    it "assigns the requested machine_type as @machine_type" do
      get :edit, id: machine_type.to_param
      expect(assigns(:machine_type)).to eq(machine_type)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new MachineType" do
        expect do
          post :create, machine_type: valid_attr
        end.to change(MachineType, :count).by(1)
      end

      it "assigns a newly created machine_type as @machine_type" do
        post :create, machine_type: valid_attr
        expect(assigns(:machine_type)).to be_a(MachineType)
        expect(assigns(:machine_type)).to be_persisted
      end

      it "redirects to the created machine_type" do
        post :create, machine_type: valid_attr
        expect(response).to redirect_to(MachineType.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved machine_type as @machine_type" do
        post :create, machine_type: invalid_attr
        expect(assigns(:machine_type)).to be_a_new(MachineType)
      end

      it "re-renders the 'new' template" do
        post :create, machine_type: invalid_attr
        expect(response).to render_template("new")
      end
    end
  end

  describe "PATCH #update" do
    context "with valid params" do
      it "updates the requested machine_type" do
        put :update, id: machine_type.to_param, machine_type: new_attr
        machine_type.reload

        expect(machine_type.title).to eq("Fiske")
      end

      it "assigns the requested machine_type as @machine_type" do
        put :update, id: machine_type.to_param, machine_type: valid_attr
        expect(assigns(:machine_type)).to eq(machine_type)
      end

      it "redirects to the machine_type" do
        put :update, id: machine_type.to_param, machine_type: valid_attr
        expect(response).to redirect_to(machine_type)
      end
    end

    context "with invalid params" do
      it "assigns the machine_type as @machine_type" do
        put :update, id: machine_type.to_param, machine_type: invalid_attr
        expect(assigns(:machine_type)).to eq(machine_type)
      end

      it "re-renders the 'edit' template" do
        put :update, id: machine_type.to_param, machine_type: invalid_attr
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    before(:each) do
      machine_type
    end

    it "destroys the requested machine_type" do
      expect do
        delete :destroy, id: machine_type.to_param
      end.to change(MachineType, :count).by(-1)
    end

    it "redirects to the machine_types list" do
      delete :destroy, id: machine_type.to_param
      expect(response).to redirect_to(machine_types_url)
    end
  end

end
