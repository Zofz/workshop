require "rails_helper"

describe WorkTypesController, type: :controller do
  let(:work_type) { create(:work_type) }
  let(:valid_attr) { attributes_for(:work_type) }
  let(:invalid_attr) { attributes_for(:work_type, title: '') }

  allow_user_to :manage, WorkType

  describe "GET #index" do
    it "assigns all work_types as @work_types" do
      get :index

      expect(assigns(:work_types)).to eq([work_type])
    end
  end

  describe "GET #show" do
    it "assigns the requested work_type as @work_type" do
      get :show, id: work_type.to_param

      expect(assigns(:work_type)).to eq(work_type)
    end
  end

  describe "GET #new" do
    it "assigns a new work_type as @work_type" do
      get :new
      expect(assigns(:work_type)).to be_a_new(WorkType)
    end
  end

  describe "GET #edit" do
    it "assigns the requested work_type as @work_type" do
      get :edit, id: work_type.to_param
      expect(assigns(:work_type)).to eq(work_type)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new WorkType" do
        expect {
          post :create, work_type: valid_attr
        }.to change(WorkType, :count).by(1)
      end

      it "assigns a newly created work_type as @work_type" do
        post :create, work_type: valid_attr
        expect(assigns(:work_type)).to be_a(WorkType)
        expect(assigns(:work_type)).to be_persisted
      end

      it "redirects to the created work_type" do
        post :create, work_type: valid_attr
        expect(response).to redirect_to(WorkType.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved work_type as @work_type" do
        post :create, work_type: invalid_attr
        expect(assigns(:work_type)).to be_a_new(WorkType)
      end

      it "re-renders the 'new' template" do
        post :create, work_type: invalid_attr
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { attributes_for(:work_type, title: "Fiske") }
      it 'updates the requested work_type' do
        put :update, { id: work_type.to_param , work_type: new_attributes }
        work_type.reload

        expect(work_type.title).to eq("Fiske")
      end

      it "assigns the requested work_type as @work_type" do
        put :update, { id: work_type.to_param, work_type: valid_attr }
        expect(assigns(:work_type)).to eq(work_type)
      end

      it "redirects to the work_type" do
        put :update, { id: work_type.to_param, work_type: valid_attr }
        expect(response).to redirect_to(work_type)
      end
    end

    context "with invalid params" do
      it "assigns the work_type as @work_type" do
        put :update, { id: work_type.to_param , work_type: invalid_attr }
        expect(assigns(:work_type)).to eq(work_type)
      end

      it "re-renders the 'edit' template" do
        put :update, { id: work_type.to_param , work_type: invalid_attr }
        expect(response).to render_template('edit')
      end
    end
  end

  describe "DELETE #destroy" do
    # If not created before, it will be created inside the expect-bracket
    before(:each) do
      work_type
    end

    it "destroys the requested work_type" do
      expect {
        delete :destroy, id: work_type
      }.to change(WorkType, :count).by(-1)
    end

    it "redirects to the work_types list" do
      delete :destroy, id: work_type.to_param
      expect(response).to redirect_to(work_types_url)
    end
  end
end
